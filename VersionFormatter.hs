module VersionFormatter (formatDependency) where

-- Function to format a key-value tuple into the desired output
formatDependency :: (String, String) -> String
formatDependency (key, version)
  | version == "*"     = key                     -- If version is "*", return only the key
  | "^" `isPrefixOf` version = key ++ " ^>= " ++ drop 1 version  -- Handle "^"
  | "<=" `isPrefixOf` version = key ++ " <= " ++ drop 2 version  -- Handle "<="
  | "<" `isPrefixOf` version  = key ++ " < " ++ drop 1 version   -- Handle "<"
  | otherwise           = key ++ " " ++ version   -- Default case
  where
    isPrefixOf prefix str = take (length prefix) str == prefix


{- NeoHaskell translate
let makeDep (h, v)
 | v |> Text.trim |> Text.startsWith "^" = [fmt|{k} ^>={v |> Text.replace "^" ""}|]
 | 
 | otherwise = [fmt|{k} == {v}|]
-}