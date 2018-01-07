module Main where

import Data.List
import System.IO
import Lib

someList = [0,1,2,3,4,5]
anotherList = someList ++ 1 : 0 : []
sortedList = sort [1,3,2,4,3,5,4,6,5,7]

aList = [0..9]
bList = [10..19]
cList = aList ++ bList
zList = zipWith (+) aList bList
filterList = takeWhile (<40) [2,4..]

list = [n*2 | n <- cList, n<20]

someShit :: Int -> Int -> Int
someShit x y = x + y

recTest :: Int -> Int
recTest 0 = 0
recTest n = n + recTest (n-1)


isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

isOddAgain :: Int -> Bool
isOddAgain n = n `mod` 2 /= 0


main :: IO ()
main = 
    do
        putStrLn "Hello"
        print "hey"

        print ("Zipped List: " ++ show (zList))
        print ("Zipped Index " ++ show (zList !! 0) )

        print ("List: " ++ show (list))
        print ("List Size: " ++ show (length list))

        --print "What is your name?"
        --name <- getLine
        --print ("Hi, " ++ name)

        let ss = someShit 10 20
        print (show ss)

        let rt = recTest 10
        print (show rt)

        let sn = asin 1
        print sn

        let isOddRet = isOdd 305
        print isOddRet
