set laststatus=2
if !has('gui_running')
	set t_Co=256
endif

set noshowmode

function! StatusDiagnostic() abort
	let info = get(b:, 'coc_diagnostic_info', {})
	if empty(info) | return '' | endif
	let msgs = []
	if get(info, 'error', 0)
		call add(msgs, 'E' . info['error'])
	endif
	if get(info, 'warning', 0)
		call add(msgs, 'W' . info['warning'])
	endif
	return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

let g:currentmode={
			\ 'n'  : 'NORMAL ',
			\ 'no' : 'N·Operator Pending ',
			\ 'v'  : 'VISUAL ',
			\ 'V'  : 'V·Line ',
			\ "\<C-V>" : 'V·Block ',
			\ 's'  : 'Select ',
			\ 'S'  : 'S·Line ',
			\ 'x19' : 'S·Block ',
			\ 'i'  : 'INSERT ',
			\ 'R'  : 'REPLACE ',
			\ 'Rv' : 'V·Replace ',
			\ 'c'  : 'Command ',
			\ 'cv' : 'Vim Ex ',
			\ 'ce' : 'Ex ',
			\ 'r'  : 'Prompt ',
			\ 'rm' : 'More ',
			\ 'r?' : 'Confirm ',
			\ '!'  : 'Shell ',
			\ 't'  : 'Terminal '
			\}

function! ReadOnly()
  if &readonly || !&modifiable
    return ''
  else
    return ''
endfunction

set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline^=%{StatusDiagnostic()}
set statusline+=%8*\ %<%f\ %{ReadOnly()}\ %w
set statusline+=%{&modified?'[+]':''}
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ "

