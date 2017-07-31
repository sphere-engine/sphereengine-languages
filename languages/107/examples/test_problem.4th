create inbuf 16 chars allot

: gobble begin key dup 48 < while drop repeat ;
: readint dup gobble begin dup 47 > while over c! 1+ key repeat drop over - ;
: kthx begin inbuf readint over over s" 42" compare while type cr repeat drop drop ;

kthx bye

