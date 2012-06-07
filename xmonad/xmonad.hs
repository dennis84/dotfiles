import XMonad
import XMonad.Layout.NoBorders
import XMonad.Layout.Accordion
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.ManageHelpers
import Graphics.X11.ExtraTypes.XF86

import qualified XMonad.StackSet as W

main = xmonad $ withUrgencyHook dzenUrgencyHook { args = ["-bg", "darkgreen", "-xs", "1"] }
              $ myConfig

------------------------------------------------------------------------
-- Workspaces
-- The default number of workspaces (virtual screens) and their names.
--
myWorkspaces = ["1:system","2:main","3:network"] ++ map show [4..6]

myConfig = defaultConfig {
      terminal   = "urxvtc"
    , modMask    = mod1Mask -- Alt
    , layoutHook = smartBorders $ noBorders Full
    , workspaces = myWorkspaces
  }
