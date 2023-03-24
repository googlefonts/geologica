## Fontbakery report

Fontbakery version: 0.8.10

<details><summary><b>[15] Geologica[SHRP,ital,slnt,wght].ttf</b></summary><div><details><summary>💔 <b>ERROR:</b> STAT table has Axis Value tables? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/stat.html#com.adobe.fonts/check/stat_has_axis_value_tables">com.adobe.fonts/check/stat_has_axis_value_tables</a>)</summary><div>

>
>According to the OpenType spec, in a variable font, it is strongly recommended that axis value tables be included for every element of typographic subfamily names for all of the named instances defined in the 'fvar' table.
>
>Axis value tables are particularly important for variable fonts, but can also be used in non-variable fonts. When used in non-variable fonts, axis value tables for particular values should be implemented consistently across fonts in the family.
>
>https://docs.microsoft.com/en-us/typography/opentype/spec/stat#axis-value-tables
>
* 💔 **ERROR** Failed with AttributeError: AxisIndex
</div></details><details><summary>🔥 <b>FAIL:</b> Check Google Fonts glyph coverage. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage">com.google.fonts/check/glyph_coverage</a>)</summary><div>

>
>Google Fonts expects that fonts in its collection support at least the minimal set of characters defined in the `GF-latin-core` glyph-set.
>
* 🔥 **FAIL** Missing required codepoints:

	- 0x0132 (LATIN CAPITAL LIGATURE IJ)
 

	- And 0x0133 (LATIN SMALL LIGATURE IJ)
 [code: missing-codepoints]
</div></details><details><summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyf_nested_components">com.google.fonts/check/glyf_nested_components</a>)</summary><div>

>
>There have been bugs rendering variable fonts with nested components. Additionally, some static fonts with nested components have been reported to have rendering and printing issues.
>
>For more info, see: * https://github.com/googlefonts/fontbakery/issues/2961 * https://github.com/arrowtype/recursive/issues/412
>
* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* uni01C4
	* uni01C5
	* uni01C8
	* uni01CB
	* uni1EDA
	* uni1EE2
	* uni1EDC
	* uni1EDE
	* uni1EE0
	* uni1EE8 and 104 more.

Use -F or --full-lists to disable shortening of long lists. [code: found-nested-components]
</div></details><details><summary>🔥 <b>FAIL:</b> Check a font's STAT table contains compulsory Axis Values. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/STAT">com.google.fonts/check/STAT</a>)</summary><div>

>
>Check a font's STAT table contains compulsory Axis Values which exist in the Google Fonts Axis Registry.
>
>We cannot determine what Axis Values the user will set for axes such as opsz, GRAD since these axes are unique for each font so we'll skip them.
>
* 🔥 **FAIL** Compulsory STAT Axis Values are incorrect:

 | Name | Axis | Current Value | Current Flags | Current LinkedValue | Expected Value | Expected Flags | Expected LinkedValue |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Thin | wght | 100.0 | 0 | None | 100.0 | 0 | None |
| ExtraLight | wght | 200.0 | 0 | None | 200.0 | 0 | None |
| Light | wght | 300.0 | 0 | None | 300.0 | 0 | None |
| Regular | wght | 400.0 | 0 | 700.0 | 400.0 | 2 | 700.0 |
| Medium | wght | 500.0 | 0 | None | 500.0 | 0 | None |
| SemiBold | wght | 600.0 | 0 | None | 600.0 | 0 | None |
| Bold | wght | 700.0 | 0 | None | 700.0 | 0 | None |
| ExtraBold | wght | 800.0 | 0 | None | 800.0 | 0 | None |
| Black | wght | 900.0 | 0 | None | 900.0 | 0 | None |
 [code: bad-axis-values]
</div></details><details><summary>🔥 <b>FAIL:</b> Check variable font instances (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fvar_instances">com.google.fonts/check/fvar_instances</a>)</summary><div>

>
>Check a font's fvar instance coordinates comply with our guidelines: https://googlefonts.github.io/gf-guide/variable.html#fvar-instances
>
* 🔥 **FAIL** fvar instances are incorrect:
- Delete additional instances

| Name | current | expected |
| :--- | :--- | :--- |
| Sharp Medium | wght=500.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Bold Italic | wght=700.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp SemiBold | wght=600.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Black | wght=900.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Light Italic | wght=300.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp ExtraBold Italic | wght=800.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp SemiBold Italic | wght=600.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp ExtraLight | wght=200.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Medium Italic | wght=500.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp Italic | wght=400.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp Thin Italic | wght=100.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp Bold | wght=700.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp ExtraBold | wght=800.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp ExtraLight Italic | wght=200.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Sharp Thin | wght=100.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Light | wght=300.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Regular | wght=400.0, ital=0.0, slnt=0.0, SHRP=100.0 | N/A |
| Sharp Black Italic | wght=900.0, ital=1.0, slnt=-12.0, SHRP=100.0 | N/A |
| Thin Italic | wght=100.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=100.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Thin | wght=100.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=100.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| ExtraLight Italic | wght=200.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=200.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| ExtraLight | wght=200.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=200.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Light Italic | wght=300.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=300.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Light | wght=300.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=300.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Italic | wght=400.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=400.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Regular | wght=400.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=400.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Medium Italic | wght=500.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=500.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Medium | wght=500.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=500.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| SemiBold Italic | wght=600.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=600.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| SemiBold | wght=600.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=600.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Bold | wght=700.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=700.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Bold Italic | wght=700.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=700.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| ExtraBold | wght=800.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=800.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| ExtraBold Italic | wght=800.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=800.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Black Italic | wght=900.0, ital=1.0, slnt=-12.0, SHRP=0.0 | wght=900.0, ital=0.0, slnt=0.0, SHRP=0.0 |
| Black | wght=900.0, ital=0.0, slnt=0.0, SHRP=0.0 | wght=900.0, ital=0.0, slnt=0.0, SHRP=0.0 | [code: bad-fvar-instances]
</div></details><details><summary>🔥 <b>FAIL:</b> Ensure VFs do not contain the ital axis.  (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont/unsupported_axes">com.google.fonts/check/varfont/unsupported_axes</a>)</summary><div>

>
>The 'ital' axis is not supported yet in Google Chrome.
>
>For the time being, we need to ensure that VFs do not contain this axis. Once browser support is better, we can deprecate this check.
>
>For more info regarding browser support, see: https://arrowtype.github.io/vf-slnt-test/
>
* 🔥 **FAIL** The "ital" axis is not yet well supported on Google Chrome. [code: unsupported-ital]
</div></details><details><summary>🔥 <b>FAIL:</b> OS/2.fsSelection bit 7 (USE_TYPO_METRICS) is set in all fonts. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/os2/use_typo_metrics">com.google.fonts/check/os2/use_typo_metrics</a>)</summary><div>

>
>All fonts on the Google Fonts collection should have OS/2.fsSelection bit 7 (USE_TYPO_METRICS) set. This requirement is part of the vertical metrics scheme established as a Google Fonts policy aiming at a common ground supported by all major font rendering environments.
>
>For more details, read: https://github.com/googlefonts/gf-docs/blob/main/VerticalMetrics/README.md
>
>Below is the portion of that document that is most relevant to this check:
>
>Use_Typo_Metrics must be enabled. This will force MS Applications to use the OS/2 Typo values instead of the Win values. By doing this, we can freely set the Win values to avoid clipping and control the line height with the typo values. It has the added benefit of future line height compatibility. When a new script is added, we simply change the Win values to the new yMin and yMax, without needing to worry if the line height have changed.
>
* 🔥 **FAIL** OS/2.fsSelection bit 7 (USE_TYPO_METRICS) wasNOT set in the following fonts: ['../fonts/Monokrom-fonts/variable/Geologica[SHRP,ital,slnt,wght].ttf']. [code: missing-os2-fsselection-bit7]
</div></details><details><summary>🔥 <b>FAIL:</b> Check correctness of STAT table strings  (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings">com.google.fonts/check/STAT_strings</a>)</summary><div>

>
>On the STAT table, the "Italic" keyword must not be used on AxisValues for variation axes other than 'ital'.
>
* 🔥 **FAIL** The following AxisValue entries on the STAT table should not contain "Italic":
 ['nameID 257: Italic'] [code: bad-italic]
</div></details><details><summary>🔥 <b>FAIL:</b> Validates that when an instance record is included for the default instance, its subfamilyNameID value is set to either 2 or 17 (or something with the same value as 2), and its postScriptNameID value is set to 6 (or something with the same value as 6). (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/fvar.html#com.adobe.fonts/check/varfont/valid_default_instance_nameids">com.adobe.fonts/check/varfont/valid_default_instance_nameids</a>)</summary><div>

>
>According to the 'fvar' documentation in OpenType spec v1.9.1 https://docs.microsoft.com/en-us/typography/opentype/spec/fvar
>
>The default instance of a font is that instance for which the coordinate value of each axis is the defaultValue specified in the corresponding variation axis record. An instance record is not required for the default instance, though an instance record can be provided. When enumerating named instances, the default instance should be enumerated even if there is no corresponding instance record. If an instance record is included for the default instance (that is, an instance record has coordinates set to default values), then the nameID value should be set to either 2 or 17  or to a name ID with the same value as name ID 2. Also, if a postScriptNameID is included in instance records, and the postScriptNameID value should be set to 6 or to a name ID with the same value as name ID 6.
>
* 🔥 **FAIL** 'Thin' instance has the same coordinates as the default instance; its subfamily name should be 'Regular' [code: invalid-default-instance-subfamily-nameid:260]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure variable fonts include an avar table. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mandatory_avar_table">com.google.fonts/check/mandatory_avar_table</a>)</summary><div>

>
>Most variable fonts should include an avar table to correctly define axes progression rates.
>
>For example, a weight axis from 0% to 100% doesn't map directly to 100 to 1000, because a 10% progression from 0% may be too much to define the 200, while 90% may be too little to define the 900.
>
>If the progression rates of axes is linear, this check can be ignored. Fontmake will also skip adding an avar table if the progression rates are linear. However, we still recommend designers visually proof each instance is at the expected weight, width etc.
>
* ⚠ **WARN** This variable font does not have an avar table. [code: missing-avar]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags">com.google.fonts/check/meta/script_lang_tags</a>)</summary><div>

>
>The OpenType 'meta' table originated at Apple. Microsoft added it to OT with just two DataMap records:
>
>- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages and scripts, with possible variants, the font is designed for.
>
>- slng: comma-separated ScriptLangTags that indicate which scripts, or languages and scripts, with possible variants, the font supports.
>
>The slng structure is intended to describe which languages and scripts the font overall supports. For example, a Traditional Chinese font that also contains Latin characters, can indicate Hant,Latn, showing that it supports Hant, the Traditional Chinese variant of the Hani script, and it also supports the Latn script.
>
>The dlng structure is far more interesting. A font may contain various glyphs, but only a particular subset of the glyphs may be truly "leading" in the design, while other glyphs may have been included for technical reasons. Such a Traditional Chinese font could only list Hant there, showing that it’s designed for Traditional Chinese, but the font would omit Latn, because the developers don’t think the font is really recommended for purely Latin-script use.
>
>The tags used in the structures can comprise just script, or also language and script. For example, if a font has Bulgarian Cyrillic alternates in the locl feature for the cyrl BGR OT languagesystem, it could also indicate in dlng explicitly that it supports bul-Cyrl. (Note that the scripts and languages in meta use the ISO language and script codes, not the OpenType ones).
>
>This check ensures that the font has the meta table containing the slng and dlng structures.
>
>All families in the Google Fonts collection should contain the 'meta' table. Windows 10 already uses it when deciding on which fonts to fall back to. The Google Fonts API and also other environments could use the data for smarter filtering. Most importantly, those entries should be added to the Noto fonts.
>
>In the font making process, some environments store this data in external files already. But the meta table provides a convenient way to store this inside the font file, so some tools may add the data, and unrelated tools may read this data. This makes the solution much more portable and universal.
>
* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]
</div></details><details><summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs">com.google.fonts/check/unreachable_glyphs</a>)</summary><div>

>
>Glyphs are either accessible directly through Unicode codepoints or through substitution rules.
>
>In Color Fonts, glyphs are also referenced by the COLR table.
>
>Any glyphs not accessible by either of these means are redundant and serve only to increase the font's file size.
>
* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:

	- NULL

	- colonmonetary.BRACKET.140

	- f_f_i 

	- And f_f_l
 [code: unreachable-glyphs]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure dotted circle glyph is present and can attach marks. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/dotted_circle">com.google.fonts/check/dotted_circle</a>)</summary><div>

>
>The dotted circle character (U+25CC) is inserted by shaping engines before mark glyphs which do not have an associated base, especially in the context of broken syllabic clusters.
>
>For fonts containing combining marks, it is recommended that the dotted circle character be included so that these isolated marks can be displayed properly; for fonts supporting complex scripts, this should be considered mandatory.
>
>Additionally, when a dotted circle glyph is present, it should be able to display all marks correctly, meaning that it should contain anchors for all attaching marks.
>
* ⚠ **WARN** No dotted circle glyph present [code: missing-dotted-circle]
</div></details><details><summary>⚠ <b>WARN:</b> Does the font have a DSIG table? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig">com.google.fonts/check/dsig</a>)</summary><div>

>
>Microsoft Office 2013 and below products expect fonts to have a digital signature declared in a DSIG table in order to implement OpenType features. The EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not impact Microsoft Office 2016 and above products.
>
>As we approach the EOL date, it is now considered better to completely remove the table.
>
>But if you still want your font to support OpenType features on Office 2013, then you may find it handy to add a fake signature on a placeholder DSIG table by running one of the helper scripts provided at https://github.com/googlefonts/gftools
>
>Reference: https://github.com/googlefonts/fontbakery/issues/1845
>
* ⚠ **WARN** This font has a digital signature (DSIG table) which is only required - even if only a placeholder - on old programs like MS Office 2013 in order to work properly.
The current recommendation is to completely remove the DSIG table. [code: found-DSIG]
</div></details><details><summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss">com.google.fonts/check/outline_alignment_miss</a>)</summary><div>

>
>This check heuristically looks for on-curve points which are close to, but do not sit on, significant boundary coordinates. For example, a point which has a Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the baseline, here we also check for points near the x-height (but only for lowercase Latin letters), cap-height, ascender and descender Y coordinates.
>
>Not all such misaligned curve points are a mistake, and sometimes the design may call for points in locations near the boundaries. As this check is liable to generate significant numbers of false positives, it will pass if there are more than 100 reported misalignments.
>
* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:

	* exclam (U+0021): X=222.0,Y=-0.5 (should be at baseline 0?)

	* period (U+002E): X=172.0,Y=-0.5 (should be at baseline 0?)

	* colon (U+003A): X=202.0,Y=-0.5 (should be at baseline 0?)

	* question (U+003F): X=348.0,Y=-0.5 (should be at baseline 0?)

	* at (U+0040): X=1372.0,Y=2.0 (should be at baseline 0?)

	* a (U+0061): X=715.5,Y=959.0 (should be at x-height 960?)

	* c (U+0063): X=770.0,Y=1.5 (should be at baseline 0?)

	* q (U+0071): X=754.0,Y=961.5 (should be at x-height 960?)

	* cent (U+00A2): X=748.0,Y=2.0 (should be at baseline 0?)

	* section (U+00A7): X=886.0,Y=-2.0 (should be at baseline 0?) 

	* And 39 more.

Use -F or --full-lists to disable shortening of long lists. [code: found-misalignments]
</div></details><br></div></details>
### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 1 | 8 | 6 | 99 | 9 | 104 | 0 |
| 0% | 4% | 3% | 44% | 4% | 46% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
