# A simple web scraper script


Usage:
```
./webscraper.sh
```


The [`webscraper.sh`](webscraper.sh) script takes as input a text file (`./urls.txt`) with one URL per line such as,
```
https://some/web/page.html
https://another/web/page.html
https://yet/another/web/page.html
```
and saves the contents of each web URL to a separate text file in an output directory (`./outdir`). The output directory will be created if it does not already exist.

Saved files are named using the base name of the URL, i.e., everything after the last `/`, and with a `.txt` extension added. So, for example, `https://some/web/page.html` will be saved as `page.html.txt`.

*WARNING: This means that URLS with the same base name, such as `page.html` in all the examples above, will end up being saved to the same file name, with one overwriting the other!* In future versions, one may want to provide the URLs file with a second column that specifies the output file name per URL.

*WARNING: Windows users, please ensure that the URLs file you provide is saved with Unix line endings (see [this](https://support.nesi.org.nz/hc/en-gb/articles/218032857-Converting-from-Windows-style-to-UNIX-style-line-endings) if you don't know what that means and how to resolve that using `dos2unix`).*

This Bash script relies on the following utilities being available: `wget`, `html2text`.
