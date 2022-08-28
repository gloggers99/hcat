import System.Environment
import System.Directory

getFiles :: [String] -> IO [String]
getFiles = mapM (\x -> case x of
                    doesFileExist -> readFile x)

main :: IO ()
main = getArgs >>= getFiles >>= putStr . unlines
