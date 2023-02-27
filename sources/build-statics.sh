### Run in the terminal by entering this file path (must be given execute permissions with chmod)
### requires a python 3 environment

#!/bin/sh
#source ../venv/bin/activate
set -e


######### generate static fonts ############


echo "Generating Static fonts"
mkdir -p ../fonts/ttf
rm -rf ../fonts/ttf/*
fontmake -g Geologica.glyphs -f -i -a -o ttf --output-dir ../fonts/ttf/
rm -rf instance_ufo/ #master_ufo/  #deletes everything in root directory


########## post processing static ttf ############


echo "Post processing static fonts"

ttfs=$(ls ../fonts/ttf/*.ttf)
for ttf in $ttfs
do
	# fix hinting #
	echo "fix hinting static ttf"
	#gftools fix-nonhinting $ttf $ttf.fix; #run if the fonts are unhinted
	gftools fix-hinting $ttf;  #run if the fonts have been previously hinted
	mv "$ttf.fix" $ttf;	
done
# remove any backup files #
rm -f ../fonts/ttfs/*backup*.ttf
		

############### font bake ##################


fontbakery check-googlefonts ../fonts/ttf/*.ttf --ghmarkdown ../fonts/checks/checks_static.md





