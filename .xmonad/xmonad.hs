import XMonad
import XMonad.Config.Gnome
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO


main = do
xmproc<- spawnPipe "/usr/bin/xmobar /home/ryan/.xmobarrc"
xmonad $ gnomeConfig

