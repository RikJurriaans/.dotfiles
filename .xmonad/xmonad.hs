import XMonad
import XMonad.Config.Xfce

main = xmonad $ xfceConfig
  {
    terminal = "xfce4-terminal"
  , startupHook = myStartupHook
  }

myStartupHook = do
  spawn "$HOME/.xmonad/autostart.sh"
