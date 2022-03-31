travelToWork :: String -> IO ()
travelToWork weather = do
    if weather == "sunny"
        then putStrLn "Walking to work"
        else putStrLn "Driving to work"

main :: IO ()
main = do
    travelToWork "sunny"