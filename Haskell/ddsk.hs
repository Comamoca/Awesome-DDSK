import System.Random
import Control.Monad

main = do
    g    <- newStdGen       -- get a new random generator
    let args = ["ドド", "スコ"]

    let ns   = randomRs (0,length args-1) g
        strs = map (args !!) ns
    mapM_ putStr (isDdsk initstr strs)
    putStr "ラブ注入♡"



initstr :: [String]
initstr = ["X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "X"]


ddskstr :: [String]
ddskstr = ["ドド", "スコ", "スコ", "スコ", "ドド", "スコ", "スコ", "スコ", "ドド", "スコ", "スコ", "スコ"]

nextDdsk :: [String] -> String -> [String]
nextDdsk (_:xs) str = xs ++ [str]

isDdsk :: [String] -> [String] -> [String]
isDdsk currstr (x:xs) | currstr == ddskstr   = currstr
                      | otherwise            = isDdsk (nextDdsk currstr x) xs
