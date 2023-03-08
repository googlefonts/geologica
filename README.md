![Geologica type specimen](documentation/home.png)

# Geologica 

Geologica is grounded in the humanist genre, but leans assertively into geometric, constructed letterforms to find its stability. The wide stance, generous spacing, large apertures and even colour makes Geologica a serious text typeface. The stylistic “Sharp” axis adds a rational interpretation of calligraphic pen strokes – a modernist echo of the roots of writing.

![Geologica type specimen](documentation/home2.png)

The default style of the Geologica typeface is a sober humanist sans serif with a rational finish. The terminals are perpendicular to the direction of the pen stroke, emphasising the monolinearity of the letterforms. The alternate “Sharp” styles introduces details derived from writing with a broad-nib pen. Sharp points arise where the imagined pen is set to paper. These details are echoed in the Carthesian terminal treatment, causing curved shapes to form sharp inner points as they terminate.

Geologica uses the power of the OpenType Variable Font format to simultaneously morph between light and black weights, upright and slanted, and stylistic variants. This gives an incredibly rich typographic palette, making Geologica a typeface of great versatility. 


### Variable axis

| Axes          | Tag  | Range      | Default  | Description                                            |
| :------------ | :--- | :--------- | :------- | :----------------------------------------------------- | 
| Weight        | wght | 100 to 900 | 100      | Thin to Black                                          |
| Slant         | slnt | 0 to -12   | 0        | Upright (0°) to Oblique (-12°)                         |
| Cursive       | ital | 0 to 1     | 0        | Swaps roman for cursive variants of certain characters |
| Sharp         | SHRP | 0 to 100   | 0        | Detailing and terminal treatment                       |





# Building the fonts

## Step 1: Virtual environment & requirements

### Navigate to the root directory
```
cd [folder location]
```

### Set up a virtual environment in the root directory

```
virtualenv -p python3 venv
```

### Activate the virtual environment

```
source venv/bin/activate
```

### Install requirements

```
pip install -U -r Requirements.txt
```

You might also need to install ttfautohint

```
brew install ttfautohint
```



## Step 2: Build the fonts


### Navigate to /sources
Assuming you are already in the root directory

```
cd sources
```

### Build OTvar fonts

```
sh build.sh
```

### Build static TTF fonts

```
sh build-statics.sh
```
