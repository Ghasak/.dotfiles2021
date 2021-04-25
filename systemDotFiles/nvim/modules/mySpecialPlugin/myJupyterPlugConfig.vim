"
"
"
"
" We have already prepared the location before in the environment script
" Source : https://github.com/jupyter-vim/jupyter-vim
"==============================================================================
"                       Global JupyterNotebook Luncher
"                       based on your anaconda default
"                       installation.
"==============================================================================
if has('nvim')
    let g:python3_host_prog = '~/opt/anaconda3/bin/python'
else
    set pyxversion=3

    " OSX
    set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/Python

    " Windows
    set pythonthreedll=python37.dll
    set pythonthreehome=C:\Python37
endif
"==============================================================================
"                       Adding Configurations for
"                       Running JupyterNotebook
"                       in your openned virtualenv
"==============================================================================
" Always use the same virtualenv for vim, regardless of what Python
" environment is loaded in the shell from which vim is launched
" let g:vim_virtualenv_path = '/path/to/my/new/vim_virtualenv'
" if exists('g:vim_virtualenv_path')
"     python3 import os; import vim
"     python3 activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')
"     python3 with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})
" endif

"==============================================================================
"                   Configurations of Jupyter with Nvim
"==============================================================================
"/Users/ghasak.ibrahim/.jupyter/jupyter_console_config.py
"/Users/ghasak.ibrahim/.jupyter/jupyter_qtconsole_config.py

