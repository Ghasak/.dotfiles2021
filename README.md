
# Gnu-Stow restore my dot-files configuration and setup (for MACBOOK Setups):

I  have shifted my dotfiles now to be stored and recover with `Gnu-Stow` as a farm of symilinks.
- [import] You must be inside the dotfile directory to allow `stow` to intract with the home directory (parent directory).
- When you stow files, ensure the directory of recovering the files is empty, otherwise (stow) command will not work.
- To stow any changes use:

```sh
# At current dot file
stow . --verbose=1
```
- To remove any stow simylink and rest to default (no simylink)

```
stow -D .

```
# To-do

Here I store the configurations that are hard to be configured by the command `stow` which are

- [x] Daily customized applications
- [x] General font directory
- [x] Piglet and lolcat configurations with the font of ASCII
- [x] Applications list
- [x] Pip list
- [x] Node-js global libraries list
- [x] jupyterNotebook configurations
- [x] Stow files structure for better restoration.
- [x] Create bash script to automate installing the necessary libraries and packages.

# Restore non-stow command files

To restore the files, remove the (application name -) of each directory and store them to where they belong:

## Alfred workflow directory

Alfred workflow is located at:

```sh
*~/Library/Application Support/Alfred/Alfred.alfredpreferences/workflows/*

```

## MacBook Fonts

Macbook main fonts for daily usage.

```sh
/Library/Fonts

```

## Figlet Fonts

Figlet fonts is located at:

```sh
/usr/local/Cellar/figlet/2.2.5/share/figlet/fonts*

```

# Applications and Libraries

## List of applications dont belong to any package manager
-  recoll mapped to */opt/local/bin/recoll* => Pdf oranizer and storring notes.
-


## List of Applications I am using:

- Alacritty
- Memory Cleaner 4.4
- Alfred
- Amethyst
- AnyDesk
- App Cleaner & uninstaller
- Atom
- Be Focused
- cool-retor-term
- Dash (coding snippets)
- DB Browser for  SQLite
- DevUtils (v. 1.11.0 (83D) via devutils.app) [Developer website](https://devutils.app/faqs/)
- Disk Space Analyzer Pro.
- DisplyaLink Manager (for multi-monitors)
- Docker
- Dozer (hide apps icons in menu bar)
- draw.io.app
- Expressions (regular expression application)
- FontForge
- GIMP-2.10 (photoshop alternative)
- goneovim (rarely used)
- Grammarly for Safari
- iGlance (not so good compared to  stats free-app )
- Irvue ( background changing app command + shift + n for new background, and to save command + shift + s)
- iTerm
- JetBrains ToolBox
- Joplin (for note taking)
- Julia-1.5
- Kite
- LinkedIdeas (cool app for tracing ideas and thoughts)
- MarginNote 3
- massCode (to store coding snippets)
- Microsoft Remote Desktop
- MiKTeX Console (Latex)
- MindNode
- Neovide
- NightOwl (not used)
- Obsidian
- OpenInterminal (to lanuch iterm session at given directory)
- PDFArchiver (nice pdf organizer)
- PennyWise (open a webpage and float it on all multi-monitors)
- Platypus (mac app creator from any shell scripts)
- qutebrowswer (browswer with vim keys-binding support )
- R and R studios.
- RustDesk (similar to AnyDesk for remote accessing not used)
- SafariKai (for translate on fly  any japanese text with safari)
- Sioyek (pdf reader with vim keybindings)
- Skim (pdf reader)
- Slack
- Spectacle (not use as I shifted to Amethyst)
- Speedtest
- Tabs Saver for Safari (paid app for store all your tabs)
- Typinator (paid, for insert correction words and coding snippets)
- Vieb (browser with vim key-bindings)
- Vimari (vim support for Safari)
- Visual Stuido Code (with vim support)
- WhatFont
- Zenmap (to allow launch markdown vim command to open *.md in the default browser)
- Zoom.us


## List of global npm libraries:

```
/usr/local/lib
├── asciicast2gif@0.2.1
├── bash-language-server@1.17.0
├── eslint@7.29.0
├── fast-cli@3.0.1
├── gnomon@1.5.0
├── gtop@1.1.1
├── how-2@1.8.2
├── javascript-typescript-langserver@2.11.3
├── jquery@3.6.0
├── jsdoc@3.6.7
├── live-server@1.2.1
├── markdown-pdf@10.0.0
├── n@7.3.0
├── neovim@4.10.0
├── npm-gui@3.1.1
├── npm@7.21.1
├── pm2@5.1.0
├── prettier@2.3.1
├── pyright@1.1.165
├── speed-test@2.1.0
├── sql-language-server@0.12.0
├── standard@16.0.3
├── taskbook@0.3.0
├── typescript@4.3.5
├── vscode-json-languageservice@4.1.4
└── wikit@4.4.1

```

## List of pip global libraries:

```
Package                            Version
---------------------------------- -------------------
alabaster                          0.7.12
anaconda-client                    1.7.2
anaconda-navigator                 2.0.3
anaconda-project                   0.9.1
anyio                              2.2.0
appdirs                            1.4.4
applaunchservices                  0.2.1
appnope                            0.1.2
appscript                          1.1.2
argh                               0.26.2
argon2-cffi                        20.1.0
asn1crypto                         1.4.0
astroid                            2.5
astropy                            4.2.1
async-generator                    1.10
atomicwrites                       1.4.0
attrs                              20.3.0
autopep8                           1.5.6
Babel                              2.9.0
backcall                           0.2.0
backports.entry-points-selectable  1.1.0
backports.functools-lru-cache      1.6.4
backports.shutil-get-terminal-size 1.0.0
backports.tempfile                 1.0
backports.weakref                  1.0.post1
beautifulsoup4                     4.9.3
bitarray                           1.9.2
bkcharts                           0.2
black                              19.10b0
bleach                             3.3.0
bokeh                              2.3.2
boto                               2.49.0
Bottleneck                         1.3.2
brotlipy                           0.7.0
certifi                            2020.12.5
cffi                               1.14.5
chardet                            4.0.0
click                              7.1.2
cloudpickle                        1.6.0
clyent                             1.2.2
colorama                           0.4.4
commonmark                         0.9.1
conda                              4.10.3
conda-build                        3.21.4
conda-content-trust                0+unknown
conda-package-handling             1.7.3
conda-repo-cli                     1.0.4
conda-token                        0.3.0
conda-verify                       3.4.2
contextlib2                        0.6.0.post1
cryptography                       3.4.7
cycler                             0.10.0
Cython                             0.29.23
cytoolz                            0.11.0
dask                               2021.4.0
decorator                          5.0.6
defusedxml                         0.7.1
diff-match-patch                   20200713
distlib                            0.3.2
distributed                        2021.4.0
docopt                             0.6.2
docutils                           0.17
emoji                              1.4.2
entrypoints                        0.3
et-xmlfile                         1.0.1
fastcache                          1.1.0
filelock                           3.0.12
fire                               0.4.0
flake8                             3.9.0
Flask                              1.1.2
fsspec                             0.9.0
future                             0.18.2
gevent                             21.1.2
glob2                              0.7
gmpy2                              2.0.8
greenlet                           1.0.0
grip                               4.5.2
h5py                               2.10.0
HeapDict                           1.0.1
html5lib                           1.1
idna                               2.10
imageio                            2.9.0
imagesize                          1.2.0
importlib-metadata                 3.10.0
iniconfig                          1.1.1
intervaltree                       3.1.0
ipykernel                          5.3.4
ipython                            7.22.0
ipython-genutils                   0.2.0
ipywidgets                         7.6.3
isort                              5.8.0
itsdangerous                       1.1.0
jdcal                              1.4.1
jedi                               0.17.2
Jinja2                             2.11.3
joblib                             1.0.1
json5                              0.9.5
jsonschema                         3.2.0
jupyter                            1.0.0
jupyter-client                     6.1.12
jupyter-console                    6.4.0
jupyter-contrib-core               0.3.3
jupyter-contrib-nbextensions       0.5.1
jupyter-core                       4.7.1
jupyter-highlight-selected-word    0.2.0
jupyter-latex-envs                 1.4.6
jupyter-nbextensions-configurator  0.4.1
jupyter-packaging                  0.7.12
jupyter-server                     1.4.1
jupyterlab                         3.0.14
jupyterlab-pygments                0.1.2
jupyterlab-server                  2.4.0
jupyterlab-widgets                 1.0.0
keyring                            22.3.0
kiwisolver                         1.3.1
lazy-object-proxy                  1.6.0
libarchive-c                       2.9
llvmlite                           0.36.0
locket                             0.2.1
lxml                               4.6.3
Markdown                           3.3.4
MarkupSafe                         1.1.1
matplotlib                         3.3.4
mccabe                             0.6.1
mistune                            0.8.4
mkl-fft                            1.3.0
mkl-random                         1.2.1
mkl-service                        2.3.0
mock                               4.0.3
more-itertools                     8.7.0
mpmath                             1.2.1
msgpack                            1.0.2
multipledispatch                   0.6.0
mypy-extensions                    0.4.3
navigator-updater                  0.2.1
nbclassic                          0.2.6
nbclient                           0.5.3
nbconvert                          6.0.7
nbformat                           5.1.3
nest-asyncio                       1.5.1
networkx                           2.5
nltk                               3.6.1
nose                               1.3.7
notebook                           6.3.0
numba                              0.53.1
numexpr                            2.7.3
numpy                              1.20.1
numpydoc                           1.1.0
olefile                            0.46
openpyxl                           3.0.7
packaging                          20.9
pandas                             1.2.4
pandocfilters                      1.4.3
parso                              0.7.0
partd                              1.2.0
path                               15.1.2
path-and-address                   2.0.1
pathlib2                           2.3.5
pathspec                           0.7.0
patsy                              0.5.1
pep8                               1.7.1
pexpect                            4.8.0
pickleshare                        0.7.5
Pillow                             8.2.0
pip                                21.2.4
pipenv                             2021.5.29
pkginfo                            1.7.0
platformdirs                       2.3.0
pluggy                             0.13.1
ply                                3.11
prometheus-client                  0.10.1
prompt-toolkit                     3.0.17
psutil                             5.8.0
ptyprocess                         0.7.0
py                                 1.10.0
pycodestyle                        2.6.0
pycosat                            0.6.3
pycparser                          2.20
pycurl                             7.43.0.6
pydocstyle                         6.0.0
pyerfa                             1.7.3
pyflakes                           2.2.0
Pygments                           2.8.1
pylint                             2.7.4
pyls-black                         0.4.6
pyls-spyder                        0.3.2
pynvim                             0.4.3
pyodbc                             4.0.0-unsupported
pyOpenSSL                          20.0.1
pyparsing                          2.4.7
pyrsistent                         0.17.3
PySocks                            1.7.1
pytest                             6.2.3
python-dateutil                    2.8.1
python-jsonrpc-server              0.4.0
python-language-server             0.36.2
pytz                               2021.1
PyWavelets                         1.1.1
PyYAML                             5.4.1
pyzmq                              20.0.0
QDarkStyle                         2.8.1
QtAwesome                          1.0.2
qtconsole                          5.0.3
QtPy                               1.9.0
regex                              2021.4.4
requests                           2.25.1
rich                               10.9.0
rope                               0.18.0
Rtree                              0.9.7
ruamel-yaml-conda                  0.15.100
scikit-image                       0.18.1
scikit-learn                       0.24.1
scipy                              1.6.2
seaborn                            0.11.1
Send2Trash                         1.5.0
setuptools                         52.0.0.post20210125
simplegeneric                      0.8.1
singledispatch                     0.0.0
six                                1.15.0
sniffio                            1.2.0
snowballstemmer                    2.1.0
sortedcollections                  2.1.0
sortedcontainers                   2.3.0
soupsieve                          2.2.1
Sphinx                             4.0.1
sphinxcontrib-applehelp            1.0.2
sphinxcontrib-devhelp              1.0.2
sphinxcontrib-htmlhelp             1.0.3
sphinxcontrib-jsmath               1.0.1
sphinxcontrib-qthelp               1.0.3
sphinxcontrib-serializinghtml      1.1.4
sphinxcontrib-websupport           1.2.4
spyder                             4.2.5
spyder-kernels                     1.10.2
SQLAlchemy                         1.4.7
statsmodels                        0.12.2
sympy                              1.8
tables                             3.6.1
tblib                              1.7.0
termcolor                          1.1.0
terminado                          0.9.4
testpath                           0.4.4
textdistance                       4.2.1
threadpoolctl                      2.1.0
three-merge                        0.1.1
tifffile                           2020.10.1
toml                               0.10.2
toolz                              0.11.1
tornado                            6.1
tqdm                               4.59.0
traitlets                          5.0.5
typed-ast                          1.4.2
typing-extensions                  3.7.4.3
ujson                              4.0.2
unicodecsv                         0.14.1
urllib3                            1.26.4
virtualenv                         20.7.2
virtualenv-clone                   0.5.7
watchdog                           1.0.2
wcwidth                            0.2.5
webencodings                       0.5.1
Werkzeug                           1.0.1
wheel                              0.36.2
widgetsnbextension                 3.5.1
wrapt                              1.12.1
wurlitzer                          2.1.0
xlrd                               2.0.1
XlsxWriter                         1.3.8
xlwings                            0.23.0
xlwt                               1.3.0
xmltodict                          0.12.0
yapf                               0.31.0
zict                               2.0.0
zipp                               3.4.1
zope.event                         4.5.0
zope.interface                     5.3.0

```

## List of my homebrew packages:


```
==> Formulae
ack				geocode-glib			libffi				mcfly				rpm
adwaita-icon-theme		gettext				libgcrypt			mesa				rtmpdump
aom				ghostscript			libgpg-error			meson				rubberband
asciinema			giflib				libgweather			mpdecimal			ruby
aspell				gifsicle			libheif				mpfr				ruby-build
assimp				girara				libidn				msgpack				screenfetch
atk				git				libidn2				mupdf				screenresolution
autoconf			git-lfs				libimagequant			nb				sdl2
autojump			gitstatus			liblqr				ncdu				shared-mime-info
automake			glances				libmagic			ncurses				sk
azure-cli			glib				libmaxminddb			neofetch			snappy
bash				glib-networking			libmpc				netdata				speex
bash-completion			glow				libnotify			netpbm				sphinx-doc
bat				gmp				libogg				nettle				sqlite
bdw-gc				gnu-getopt			libomp				nghttp2				srt
bench				gnu-sed				libpng				ninja				stow
berkeley-db			gnutls				libproxy			nmap				synctex
bmon				go				libpsl				node				task
boxes				goaccess			libpthread-stubs		nspr				tcl-tk
bpytop				gobject-introspection		libraqm				nss				tesseract
broot				googler				librsvg				ocrmypdf			tesseract-lang
brotli				graphite2			libsamplerate			oniguruma			texinfo
c-ares				graphviz			libsndfile			opencore-amr			the_platinum_searcher
cairo				gsettings-desktop-schemas	libsodium			openexr				the_silver_searcher
cliclick			gtk+				libsoup				openjpeg			thefuck
cmake				gtk+3				libsoxr				openldap			theora
code-minimap			gtk-mac-integration		libspectre			openssl@1.1			tig
colordiff			gts				libspiro			opus				tmux
confuse				guile				libssh2				ossp-uuid			tokyo-cabinet
csvkit				harfbuzz			libtasn1			osx-cpu-temp			tree
curl				hicolor-icon-theme		libtermkey			p11-kit				tree-sitter
dav1d				hstr				libtiff				pandoc				unbound
dbus				htop				libtool				pango				unibilium
desktop-file-utils		hunspell			libuninameslist			pcre				universal-ctags
diff-so-fancy			icu4c				libunistring			pcre2				unpaper
direnv				ilmbase				libuv				pdfgrep				utf8proc
djvulibre			imagemagick			libvidstab			pillow				vala
docbook				imath				libvorbis			pixman				vulkan-headers
docbook-xsl			intltool			libvpx				pkg-config			w3m
docui				isl				libvterm			pngquant			watch
docutils			jamf-pro			libx11				poppler				webp
double-conversion		jansson				libxau				popt				wget
elinks				jasper				libxcb				powerlevel10k			wtfutil
emacs-plus@27			jbig2dec			libxdamage			pstree				x264
emacs-plus@28			jbig2enc			libxdmcp			pv				x265
expat				jemalloc			libxext				pybind11			xmlto
fd				jpeg				libxfixes			pygments			xorgproto
ffmpeg				jq				libxi				pypy3				xplr
figlet				json-c				libxrandr			python@3.8			xvid
flac				json-glib			libxrender			python@3.9			xz
fontconfig			lame				libxxf86vm			qpdf				yarn
fontforge			lazydocker			libyaml				qt				ytop
fortune				lazygit				little-cms2			qt@5				zathura
freeglut			leptonica			lolcat				rainbarf			zathura-cb
freetype			libarchive			lua				ranger				zathura-djvu
frei0r				libass				luajit				rav1e				zathura-pdf-poppler
fribidi				libb2				luajit-openresty		rbenv				zathura-ps
fzf				libbluray			luarocks			readline			zeromq
gcc				libde265			luv				regex-opt			zimg
gd				libepoxy			lz4				ripgrep				zlib
gdbm				libev				lzo				ripgrep-all			zsh
gdk-pixbuf			libevent			m4				rlwrap				zstd

==> Casks
alacritty		cool-retro-term		font-hack-nerd-font	iglance			nightowl		platypus		vlc
amethyst		db-browser-for-sqlite	font-iosevka		joplin			openinterminal		qlmarkdown
apple-juice		dozer			font-iosevka-aile	mactex			pennywise		stats

```

## List of MacPort packages:



# How to resotre the iterm2 configurations
You have to run `defaults read com.googlecod        e.iterm2` command after stow back all the required iterm files.
check here for more details:
- [How to retore the iterm2 configuration fi        les](https://stackoverflow.com/questions/22943676/how-to-export-iterm2-profiles)
