# names are not that general but yeah... who cares...
function export_terminal_theme
  gconftool-2 --dump '/apps/gnome-terminal' > gnome-terminal-conf.xml
end

function import_terminal_theme
  gconftool-2 --load gnome-terminal-conf.xml
end
