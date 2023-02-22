"""
    Uses FontTools buildStatTable to add a defined STAT table to a variable font
"""

from fontTools.otlLib.builder import buildStatTable
from fontTools.ttLib import TTFont
import sys


AXES = [
    dict(
        tag="CRSV",
        name="Cursive",
        ordering=0,
        values=[
            dict(value=0, name="Roman"),
            dict(value=0.5, name="Auto", flags=0x2),
            dict(value=1, name="Cursive"),
        ],
    ),
    dict(
        tag="SHRP",
        name="Sharpness",
        ordering=1,
        values=[
            dict(value=0, name="Blunt", flags=0x2),
            dict(value=100, name="Sharp"),
        ],
    ),
    dict(
        tag="slnt",
        name="Slant",
        ordering=2,
        values=[
            dict(value=0, name="Default", flags=0x2),
            dict(value=-12, name="Oblique"),
        ],
    ),
    dict(
        tag="wght",
        name="Weight",
        ordering=3,
        values=[
            dict(value=100, name="Thin"),
            dict(value=200, name="ExtraLight"),
            dict(value=300, name="Light"),
            dict(value=400, name="Regular", flags=0x2, linkedValue=700),
            dict(value=500, name="Medium"),
            dict(value=600, name="SemiBold"),
            dict(value=700, name="Bold"),
            dict(value=800, name="ExtraBold"),
            dict(value=900, name="Black"),
        ],
    ),
    # dict(
    #     tag="ital",
    #     name="Italic",
    #     ordering=4,
    #     values=[
    #         dict(value=0, name="Roman", flags=0x2, linkedValue=1),
    #         dict(value=1,  name="Italic"),
    #     ],
    # ),
]
LOCATIONS = [
    dict(
        name="Italic", 
        location=[
            dict(CRSV=1, slnt=-12),
        ],
    ),
]

fullVF = "../fonts/variable/full/Geologica[CRSV,SHRP,slnt,wght].ttf"
# splitRomaVF = "../fonts/variable/full/Geologica[SHRP,wght].ttf"
# splitItalicVF = "../fonts/variable/full/Geologica-Italic[SHRP,wght].ttf"


def main():
    filepath = sys.argv[1]
    tt = TTFont(filepath)

    buildStatTable(tt, AXES)
    # update_fvar(tt)
    tt.save(filepath)
    print(f"Added STAT table to {filepath}")


if __name__ == "__main__":
    main()
