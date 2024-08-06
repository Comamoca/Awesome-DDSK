import System.Random
import Control.Monad
import System.Environment

main = do
    g    <- newStdGen       -- get a new random generator
    -- args <- getArgs         -- get the arguments
    let args = ["ドド", "スコ"]

    -- do some error checking
    when (null args) $ print "Usage: ./a.out [arg1 ... argn]"

    -- generate an infinite list of random numbers
    -- and now use them to generate an infinite list of strings 
    -- print them out

    let ns   = randomRs (0,length args-1) g
        strs = map (args !!) ns
    mapM_ putStrLn strs
