#!/usr/bin/env python
import re
import glob
import hashlib
from io import StringIO


# File header
header="""
subroutine check_options

"""
footer="""
end subroutine check_options
"""

outfile='preprocessor/check_options.F90'

# get sha1 digest of existing generated file.  Can't use 'rw' here
# because it updates the modtime of the file, which we're trying to
# avoid doing.
orig=hashlib.sha1()
try:
    f=open(outfile, 'r')
    orig.update(f.read().encode("utf8"))
except IOError:
    pass
else:
    f.close()

# Now read module files to generate potential new data
output=StringIO()
output.write(header)

# List of fortran source files.
fortran_files=glob.glob("*/*.F")+glob.glob("*/*.F90")

module_re=re.compile(r"^\s*module\s+(\w+)\s*$",re.IGNORECASE|re.MULTILINE)

module_list=[]

for filename in fortran_files:

    fortran=open(filename,"r").read()

    modules=module_re.findall(fortran)

    for module in modules:

        if re.search(r"^\s*subroutine\s+"+module+"_check_options\S*\s*$",\
                         fortran,\
                         re.IGNORECASE|re.MULTILINE):
            module_list.append(module)

for module in module_list:

    output.write("  use "+module+", only: "+module+"_check_options\n")

# Ensure that the subroutine is legal in the trivial case.
output.write("""
   continue
   """)

for module in module_list:

    output.write("  call "+module+"_check_options\n")

output.write(footer)

new=hashlib.sha1()
new.update(output.getvalue().encode("utf8"))

# Only write file if sha1sums differ
if new.digest() != orig.digest():
    try:
        f=open(outfile, 'w')
        f.write(output.getvalue())
    except IOError:
        # Fixme, this should fail better
        pass
    else:
        f.close()

output.close()
