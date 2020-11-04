## Fontbakery report

Fontbakery version: 0.7.31

<details>
<summary><b>[5] Geologica[SHRP,ital,slnt,wght].ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances have correct names</summary>

* [com.google.fonts/check/varfont_instance_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_names)

* 🔥 **FAIL** Following instances are not supported: 
	- Sharp Thin
	- Sharp Thin Italic
	- Sharp ExtraLight
	- Sharp ExtraLight Italic
	- Sharp Light
	- Sharp Light Italic
	- Sharp Regular
	- Sharp Italic
	- Sharp Medium
	- Sharp Medium Italic
	- Sharp SemiBold
	- Sharp SemiBold Italic
	- Sharp Bold
	- Sharp Bold Italic
	- Sharp ExtraBold
	- Sharp ExtraBold Italic
	- Sharp Black
	- Sharp Black Italic

Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#fvar-instances [code: bad-instance-names]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Ensure VFs do not contain slnt or ital axes. </summary>

* [com.google.fonts/check/varfont/unsupported_axes](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont/unsupported_axes)
<pre>--- Rationale ---

The &#x27;ital&#x27; axis is not supported yet in Google Chrome. The &#x27;opsz&#x27; axis also has
patchy support.

For the time being, we need to ensure that VFs do not contain either of these
axes. Once browser support is better, we can deprecate this check.

For more info regarding ital and opsz browser support, see:
https://arrowtype.github.io/vf-slnt-test/


</pre>

* 🔥 **FAIL** The "ital" axis is not yet well supported on Google Chrome. [code: unsupported-ital]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check correctness of STAT table strings </summary>

* [com.google.fonts/check/STAT_strings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings)
<pre>--- Rationale ---

On the STAT table, the &quot;Italic&quot; keyword must not be used on AxisValues for
variation axes other than &#x27;ital&#x27;.


</pre>

* 🔥 **FAIL** The following AxisValue entries on the STAT table should not contain "Italic":
 ['nameID 257: Italic'] [code: bad-italic]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** For now we're still accepting http URLs, but you should consider using https instead.
 [code: http]

</details>
<details>
<summary>⚠ <b>WARN:</b> License URL matches License text on name table?</summary>

* [com.google.fonts/check/name/license_url](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license_url)
<pre>--- Rationale ---

A known license URL must be provided in the NameID 14 (LICENSE INFO URL) entry
of the name table.

The source of truth for this check is the licensing text found on the NameID 13
entry (LICENSE DESCRIPTION).

The string snippets used for detecting licensing terms are:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=13] [code: http-in-description]
* ⚠ **WARN** Please consider using HTTPS URLs at name table entry [plat=3, enc=1, name=14] [code: http-in-license-info]
* ⚠ **WARN** For now we're still accepting http URLs, but you should consider using https instead.
 [code: http]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 3 | 2 | 80 | 7 | 89 | 0 |
| 0% | 2% | 1% | 44% | 4% | 49% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
