" Vim compiler file
" Language:	eRuby
" Maintainer:	Doug Kearns <djkea2 at gus.gscit.monash.edu.au>
" Info:		$Id: eruby.vim,v 1.2 2005/09/02 06:14:03 dkearns Exp $
" URL:		http://vim-ruby.sourceforge.net
" Anon CVS:	See above site
" Licence:	GPL (http://www.gnu.org)
" Disclaimer:
"    This program is distributed in the hope that it will be useful,
"    but WITHOUT ANY WARRANTY; without even the implied warranty of
"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"    GNU General Public License for more details.
" ----------------------------------------------------------------------------

if exists("current_compiler")
  finish
endif
let current_compiler = "eruby"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=eruby

CompilerSet errorformat=eruby:\ %f:%l:%m,
		       \%E%f:%l:\ %m,
		       \%-Z%p^,
		       \%C%m,
		       \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap ts=8 ff=unix
