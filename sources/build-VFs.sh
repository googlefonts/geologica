# source venv/bin/activate

set -e

outputDir="../fonts/variable/full"
splitDir="../fonts/variable/split"
vfFullName="Geologica[CRSV,SHRP,slnt,wght].ttf"
vfRomanName="Geologica[SHRP,wght].ttf"
vfItalicName="Geologica-Italic[SHRP,wght].ttf"

mkdir -p "$outputDir" "$splitDir"

vfFullPath="$outputDir/$vfFullName"
vfRomanPath="$splitDir/$vfRomanName"
vfItalicPath="$splitDir/$vfItalicName"

######### generate variable font ###########

echo "----GENERATING FULL VF----"

fontmake -g Geologica.glyphs -f --no-check-compatibility -o variable --output-path "$vfFullPath"

########## generating split VFs ############

echo "----GENERATING SPLIT VFS----"

echo "----Building Roman VF----"
fonttools varLib.instancer $vfFullPath CRSV=0 slnt=0 --output $vfRomanPath

echo "----Building Italic VF----"
fonttools varLib.instancer $vfFullPath CRSV=1 slnt=-12 --output $vfItalicPath

########## postprocessing ############

echo "----Postprocessing----"


# fix nonhinting full VF
echo "Full VF"
gftools fix-nonhinting "$vfFullPath" "$vfFullPath"
rm "${vfFullPath/.ttf/-backup-fonttools-prep-gasp.ttf}"

# fix nonhinting Roman VF
echo "Roman VF"
gftools fix-nonhinting "$vfRomanPath" "$vfRomanPath"
rm "${vfRomanPath/.ttf/-backup-fonttools-prep-gasp.ttf}"

# fix nonhinting Italic VF
echo "Italic VF"
gftools fix-nonhinting "$vfItalicPath" "$vfItalicPath"
rm "${vfItalicPath/.ttf/-backup-fonttools-prep-gasp.ttf}"

# add STAT table
python3 STAT-Geologica.py $vfFullPath


############### Fontbakery ##################

# fontbakery check-googlefonts -l WARN "$vfFullPath" --ghmarkdown ../fonts/checks/checks-variable-full.md 

# fontbakery check-googlefonts -l WARN "$vfRomanPath" --ghmarkdown ../fonts/checks/checks-variable-Roman.md

fontbakery check-googlefonts -l WARN "$vfItalicPath" --ghmarkdown ../fonts/checks/checks-variable-Italicmd