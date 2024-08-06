import System.Random
import Control.Monad

main = do
    g    <- newStdGen       -- get a new random generator
    let args = ["ドド", "スコ"]

    let ns   = randomRs (0,length args-1) g
        strs = map (args !!) ns

    let (_, res) = isDdsk initstr strs []
    mapM_ putStr res
    putStr "ラブ注入♡"



initstr :: [String]
initstr = ["X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "X"]


ddskstr :: [String]
ddskstr = ["ドド", "スコ", "スコ", "スコ", "ドド", "スコ", "スコ", "スコ", "ドド", "スコ", "スコ", "スコ"]

nextDdsk :: [String] -> String -> [String]
nextDdsk (_:xs) str = xs ++ [str]

isDdsk :: [String] -> [String] -> [String] -> ([String], [String])
isDdsk currstr (x:xs) logs | currstr == ddskstr   = (currstr, logs ++ currstr)
                           | otherwise            = isDdsk (nextDdsk currstr x) xs (logs ++ currstr)
