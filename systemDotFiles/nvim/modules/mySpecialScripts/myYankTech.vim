"
" https://stackoverflow.com/questions/7764176/how-to-copy-from-current-position-to-the-end-of-line-in-vi
" Make Y yank till end of line

"copy/delete word under cursor in Vim
"yw / byw
"Assuming that the cursor is at the first character of the word simply do this in command mode:
"     yw
"y is for yank and w is for word.
"
"Other ways of doing the same thing which are not as efficient:
"     vey
"the v starts visual select mode. e tells vim to move to end of word. y yanks or copies the word. to delete replace y with x.
"if the cursor is somewhere in the middle of the word, add a b before the command as in:
"     byw
"or
"     bvey

"# http://www.littletechtips.com/2011/05/how-to-copydelete-word-under-cursor-in.html
"
" How to Yank to beginning of the line at the current cursor postion
" Use : v + 0 + y
"
" Delete to the end of line : shfit + d
" Change line to the end of line : shift + c
