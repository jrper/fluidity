msh: clean
	gmsh -2 src/trench.geo

xml: msh
	dolfin-convert trench.msh trench.xml

run:
	/data/phd/fluidity_dev_bedload/bin/fluidity bedload.flml

flml:   /home/jmn114/.diamond/schemata/flml 
	sed 's/\/data\/phd\/fluidity_dev\/schemas\/fluidity_options.rng/\/data\/phd\/fluidity_dev_bedload\/schemas\/fluidity_options.rng/g' $< >$@
#	mkdir -p /.diamond/schemata/
	mv flml /home/jmn114/.diamond/schemata/

flmlback: /home/jmn114/.diamond/schemata/flml 
	  sed 's/\/data\/phd\/fluidity_dev_bedload\/schemas\/fluidity_options.rng/\/data\/phd\/fluidity_dev\/schemas\/fluidity_options.rng/g' $< >$@
	  mv flmlback /home/jmn114/.diamond/schemata/flml

diamond: flml
	 diamond bedload.flml &	 

clean:
	rm -f  *.vtu *.pvtu fluidity.* *.s *.d.1 *.stat src/trench.msh matrixdump matrixdump.info
