### Run in the terminal by entering this file path (must be given execute permissions with chmod)
### requires a python 3 environment

#!/bin/sh
#source ../venv/bin/activate
set -e


############################################
#### generate static and variable fonts ####


echo "Generating Static fonts"
mkdir -p ../fonts/static/ttfs
rm -rf ../fonts/static/ttfs/*
fontmake -m master_ufo/Geologisk.designspace -i -a -o ttf --output-dir ../fonts/static/ttfs/


echo "Generating VFs"
mkdir -p ../fonts/variable
fontmake -m master_ufo/Geologisk.designspace -o variable --output-path ../fonts/variable/Geologisk[DIAG,ital,slnt,wght].ttf

rm -rf instance_ufo/ #master_ufo/ #deletes everything in root directory


#### generate static and variable fonts ####
############################################




############################################
########## opentype table fixes ############


echo "Post processing static fonts"

ttfs=$(ls ../fonts/static/ttfs/*.ttf)
for ttf in $ttfs
do
    # fix DSIG #
	echo "fix DSIG in " $ttf
    gftools fix-dsig --autofix $ttf
	
	# fix hinting #
	#gftools fix-nonhinting $ttf $ttf.fix; #run if the fonts are unhinted
	gftools fix-hinting $ttf; #run if the fonts have been previously hinted
	mv "$ttf.fix" $ttf;	
done
# remove any backup files #
rm -f ../fonts/static/ttfs/*backup*.ttf


echo "Post processing variable fonts"

vfs=$(ls ../fonts/variable/*.ttf)
for vf in $vfs
do
    # fix DSIG #
	echo "fix DSIG in " $vf
    gftools fix-dsig --autofix $vf
	
	# fix hinting #
	gftools fix-nonhinting $vf $vf.fix; #run if fonts have not been released with Google yet
	#gftools fix-hinting $vf; #run if the fonts have been previously autohinted with ttfautohint-vf
	mv "$vf.fix" $vf;
	
	# drop MVAR. Table has issue with DW #
	ttx -f -x "MVAR" $vf; 
	rtrip=$(basename -s .ttf $vf)
	new_file=../fonts/variable/$rtrip.ttx;
	rm $vf;
	ttx $new_file
	rm $new_file
	
	# patch Name and STAT table #	
	ttx -m $vf "../sources/helpers/vf-patch.ttx"
	mv "../sources/helpers/vf-patch.ttf" "../fonts/variable/Geologisk[DIAG,ital,slnt,wght].ttf"
done
# remove any backup files #
rm -f ../fonts/variable/*backup*.ttf


########## opentype table fixes ############
############################################




############################################
############### font bake ##################


fontbakery check-googlefonts ../fonts/static/ttfs/*.ttf --ghmarkdown ../sources/checks/checks_static.md
fontbakery check-googlefonts ../fonts/variable/*.ttf --ghmarkdown ../sources/checks/checks_variable.md


############### font bake ##################
############################################


