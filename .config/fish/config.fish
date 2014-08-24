set --universal fish_user_paths $fish_user_paths /usr/local/opt/ruby/bin /usr/local/bin/
set fish_greeting

function fish_prompt
	printf '%s@%s%s %s%s%s > ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (__fish_git_prompt) (set_color normal)
end
