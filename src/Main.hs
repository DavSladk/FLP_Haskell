{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use head" #-}

-- project: flp21-fun
-- author: David Sladký
-- login: xsladk07
-- year 2022

module Main ( main ) where

import System.Exit ( exitSuccess )
import System.Environment ( getArgs )

import MyUtils ( parseArgs, openInput, printAutomat, parseAutomat )
import Unreachable ( removeUnreachableStates )
import Sink ( fullyDefine, removeSink )
import Minimalize ( reduce ) 

main :: IO ()
main = do
    args <- getArgs
    let (i,t,file) = parseArgs args

    fileAutomat <- openInput file

    let automat = parseAutomat ( lines fileAutomat )

    --closeInput file

    if i
        then do
            print automat
            exitSuccess
        else do
            return ()

    if t
        then do
            let a = removeUnreachableStates automat
            let b = fullyDefine a
            let c = reduce b
            let d = removeSink c
            printAutomat d

        else do
            return ()
