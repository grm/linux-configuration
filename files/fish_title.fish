# You can override some default title options in your config.fish:
#     set -g theme_title_display_process no
#     set -g theme_title_display_path no
#     set -g theme_title_use_abbreviated_path no

function fish_title
  if [ "$theme_title_display_process" = 'yes' ]
    if [ $_ != "fish" ]
    echo $_
#    echo '('
#    echo $argv[1]
#    echo ')'
    [ "$theme_title_display_path" != 'no' ]
      and echo ' :: '
    end
  end

  if [ "$theme_title_display_path" != 'no' ]
    if [ "$theme_title_use_abbreviated_path" = 'no' ]
      echo $PWD
    else
      prompt_pwd
    end
  end
end
