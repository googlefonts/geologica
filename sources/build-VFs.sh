### Run in the terminal by entering this file path (must be given execute permissions with chmod)
### requires a python 3 environment

#!/bin/sh
#source ../venv/bin/activate
set -e

# echo "Creating single VFs dir"
# mkdir -p ../fonts/variable/singleVFs/

vf=Geologica[CRSV,SHRP,slnt,wght].ttf


###################################################
######### generate Roman+Ital variable font ###########


echo "----Build Roman-Ital VF----"

gftools builder config.yaml


###################################################
######### generate single variable font ###########


echo "----Building Roman VF----"

fonttools varLib.instancer ../fonts/variable/Roman-Ital/$vf CRSV=0 slnt=0 --output ../fonts/variable/Geologica[SHRP,wght].ttf


echo "----Building Roman VF----"

fonttools varLib.instancer ../fonts/variable/Roman-Ital/$vf CRSV=1 slnt=-12 --output ../fonts/variable/Geologica-Italic[SHRP,wght].ttf