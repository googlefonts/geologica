# source venv/bin/activate

set -e

outputDir="../fonts/variable/full"
splitDir="../fonts/variable/split"
vfFullName="Geologica[CRSV,SHRP,slnt,wght].ttf"
vfRomanName="Geologica[SHRP,wght].ttf"
VfItalicName="Geologica-Italic[SHRP,wght].ttf"

mkdir -p "$outputDir" "$splitDir"

vfFullPath="$outputDir/$vfFullName"
vfRomanPath="$splitDir/$vfRomanName"
vfItalicPath="$splitDir/$vfItalicName"

######### generate variable font ###########

echo "GENERATING FULL VF"

fontmake -g Geologica.glyphs -f --no-check-compatibility -o variable --output-path "$vfFullPath"

########## postprocessing ############

# fix nonhinting
gftools fix-nonhinting "$vfFullPath" "$vfFullPath"
rm "${vfFullPath/.ttf/-backup-fonttools-prep-gasp.ttf}"

# vfs=$(ls "vfFullPath")
# for vf in $vfs
# do
# 	# fix hinting #
# 	gftools fix-nonhinting $vf $vf.fix; #run if fonts have not been released with Google yet
# 	# gftools fix_hinting $vf;  #run if the fonts have been previously autohinted with ttfautohint-vf
# 	mv "$vf.fix" $vf;
	
# 	# # patch Name and STAT table #	
# 	# ttx -m $vf "../sources/helpers/vf-patch.ttx"
# 	# mv "../sources/helpers/vf-patch.ttf" "../fonts/variable/Geologica[CRSV,SHRP,slnt,wght].ttf"
# done


############### Fontbakery ##################

fontbakery check-googlefonts -l WARN "$vfFullPath" --ghmarkdown ../sources/checks/checks_variable_full.md