# source venv/bin/activate

set -e

outputDir="../fonts/variable"
vfFullName="Geologica[CRSV,SHRP,slnt,wght].ttf"

vfFullPath="$outputDir/$vfFullName"


######### generate variable font ###########

echo "----GENERATING FULL VF----"

fontmake -g Geologica.glyphs -f --no-check-compatibility -o variable --output-path "$vfFullPath"


########## postprocessing ############

echo "----Postprocessing----"

# fix nonhinting full VF
echo "Full VF"
gftools fix-nonhinting "$vfFullPath" "$vfFullPath"
rm "${vfFullPath/.ttf/-backup-fonttools-prep-gasp.ttf}"

# add STAT table
python3 STAT-Geologica.py $vfFullPath


############### Fontbakery ##################

fontbakery check-googlefonts -l WARN "$vfFullPath" --ghmarkdown ../fonts/checks/checks-variable-full.md 