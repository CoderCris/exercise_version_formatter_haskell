import VersionFormatter (formatDependency)

main :: IO ()
main = do
  putStrLn $ formatDependency ("some_app", "^2.5")  -- Output: "some_app ^>= 2.5"
  putStrLn $ formatDependency ("some_app", "<2.5") -- Output: "some_app < 2.5"
  putStrLn $ formatDependency ("some_app", "<=2.5")-- Output: "some_app <= 2.5"
  putStrLn $ formatDependency ("some_app", "*")    -- Output: "some_app"