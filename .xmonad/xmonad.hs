-- system imports
import Control.Monad
import Control.Monad.Trans
import Data.Bits ((.|.))
import Data.Map (fromList)
import Data.Monoid
import Data.Ratio
import GHC.Real
import System.Exit

-- xmonad core
import XMonad
import XMonad.StackSet hiding (workspaces)

-- xmonad contrib
import XMonad.Actions.SpawnOn
import XMonad.Actions.Volume
import XMonad.Actions.Warp
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName
import XMonad.Layout.Grid
import XMonad.Layout.IndependentScreens
import XMonad.Layout.Magnifier
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout
import XMonad.Layout.Gaps

import XMonad.Util.Dzen
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Util.WorkspaceCompare ( getSortByXineramaRule )

centerMouse = warpToWindow (1/2) (1/2)
statusBarMouse = warpToScreen 0 (5/1600) (5/1200)
withScreen screen f = screenWorkspace screen >>= flip whenJust (windows . f)

launcher     = "dmenu_run"
viewShift  i = view i . shift i
floatAll     = composeAll . map (\s -> className =? s --> doFloat)

bright = "#80c0ff"
dark   = "#13294e"

keyBindings conf = let m = modMask conf in fromList $ [
    ((m                             , xK_s          ), spawnHere "sxhkd"),
    ((m                             , xK_q          ), kill),
    ((m .|. shiftMask               , xK_r          ), restart "xmonad" True),
    ((m .|. shiftMask               , xK_q          ), io (exitWith ExitSuccess)),
    ((m                             , xK_grave      ), sendMessage NextLayout),
    ((m .|. shiftMask               , xK_grave      ), setLayout $ layoutHook conf),
    ((m                             , xK_o          ), sendMessage Toggle),
    ((m                             , xK_l          ), sendMessage Expand),
    ((m                             , xK_h          ), sendMessage Shrink),
    ((m                             , xK_comma      ), sendMessage (IncMasterN 1)),
    ((m                             , xK_period     ), sendMessage (IncMasterN (-1))),
    ((m                             , xK_f          ), sendMessage ToggleStruts),
    ((m .|. shiftMask               , xK_space      ), withFocused (windows . sink)),
    ((m                             , xK_j          ), windows focusUp),
    ((m .|. shiftMask               , xK_j          ), windows swapUp),
    ((m                             , xK_k          ), windows focusDown),
    ((m .|. shiftMask               , xK_k          ), windows swapDown),
    ((m                             , xK_space      ), windows swapMaster),
    ((m               .|. mod1Mask  , xK_1          ), withScreen 0 view),
    ((m .|. shiftMask .|. mod1Mask  , xK_1          ), withScreen 0 viewShift),
    ((m .|.               mod1Mask  , xK_2          ), withScreen 1 view),
    ((m .|. shiftMask .|. mod1Mask  , xK_2          ), withScreen 1 viewShift)

    ] ++ [
    ((m .|. e, key   ), windows (onCurrentScreen f workspace))
    | (key, workspace) <- zip [xK_1..xK_9] (workspaces' conf)
    , (e, f)           <- [(0, view), (shiftMask, viewShift)]
    ]

pp h s = marshallPP s defaultPP {
    ppCurrent           = color "white",
    ppVisible           = color "white",
    ppHiddenNoWindows   = color dark,
    ppUrgent            = color "red",
    ppSep               = "",
    ppOrder             = \(wss:layout:title:_) -> ["\NUL", title, "\NUL", wss],
    ppOutput            = hPutStrLn h
    }
    where color c = xmobarColor c ""

borderSize = 10
myLayout = spacingRaw False (Border borderSize 0 borderSize 0) True (Border 0 borderSize 0 borderSize) True $ tiled ||| Mirror tiled ||| Full
  where
    -- default tiling algorithm partitions the screen into two panes
    tiled   = Tall nmaster delta ratio

    -- The default number of windows in the master pane
    nmaster = 1

    -- Default proportion of screen occupied by master pane
    ratio   = 1/2

    -- Percent of screen to increment by when resizing panes
    delta   = 3/100

myPP = def
   { ppLayout = const ""  -- Don't show the layout name
   , ppSort = getSortByXineramaRule  -- Sort left/right screens on the left, non-empty workspaces after those
   , ppTitle = const ""  -- Don't show the focused window's title
   , ppTitleSanitize = const ""  -- Also about window's title
   , ppVisible = wrap "(" ")"  -- Non-focused (but still visible) screen
   }

toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

main = do
    nScreens    <- countScreens
    spawnPipe ".startup"
    xmonad =<< statusBar "xmobar_dual" myPP toggleStrutsKey defaultConfig {
        borderWidth             = 2,
        workspaces              = withScreens nScreens (map show [1..9]),
        terminal                = "alacritty",
        normalBorderColor       = dark,
        focusedBorderColor      = bright,
        modMask                 = mod4Mask,
        keys                    = keyBindings,
        layoutHook              = myLayout,
        manageHook              = floatAll ["Gimp", "Wine"]
                                  <+> (isFullscreen --> doFullFloat)
                                  <+> manageDocks
                                  <+> manageSpawn
        }
