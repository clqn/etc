import Data.Bits ((.|.))
import Data.Default (def)
import System.Exit (exitWith, ExitCode(..))
import Data.Map (fromList, insert, delete)
import qualified XMonad as Xm

myTerminal = "urxvt"
myModMask  = Xm.mod4Mask

myKeys conf@(Xm.XConfig {Xm.modMask = mod}) =
  insertThese newBinds $ deleteThese oldBinds $ defaultKeys where
    defaultKeys = (Xm.keys def) conf
    deleteThese ks  m = foldl (\m' k -> delete k m') m ks
    insertThese kvs m = foldl (\m' (k,v) -> insert k v m') m kvs
    shift = Xm.shiftMask
    -- oldBinds are removed before newBinds are added
    -- they represent unwanted keybindings
    oldBinds = [ (mod .|. shift, Xm.xK_q)
               , (mod .|. shift, Xm.xK_Return)]
    newBinds = [ ((mod .|. shift, Xm.xK_q), Xm.kill)
               , ((mod .|. shift, Xm.xK_e), Xm.io (exitWith ExitSuccess))
               , ((mod, Xm.xK_Return), Xm.spawn $ Xm.terminal conf)
               ]

main = do
  -- Note: someRecordValue {record = list} is interpreted as
  -- someRecordValue, but with these replacements
  Xm.xmonad def -- def is the default XConfig
    { Xm.modMask = myModMask
    , Xm.terminal = myTerminal
    , Xm.keys = myKeys
    }
