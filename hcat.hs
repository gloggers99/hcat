import System.Environment
import System.IO
import System.Directory

import Control.Monad

-- check which files inputted are actually files
getFiles :: [String] -> IO [String]
getFiles = filterM doesFileExist

-- print a file into stdout
printFile :: String -> IO ()
printFile file = do
    content <- readFile file
    putStr content

-- compose everything together
main :: IO ()
main = getArgs >>= getFiles >>= mapM_ printFile

