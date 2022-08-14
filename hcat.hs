import System.Environment
import System.IO
import System.Directory

import Control.Monad

-- check which files inputted are actually files
getFiles :: [String] -> IO [String]
getFiles = filterM doesFileExist

printFile :: String -> IO ()
printFile file = do
    content <- readFile file
    putStr content

main :: IO()
main = getArgs >>= getFiles >>= mapM_ printFile

