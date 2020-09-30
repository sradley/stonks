{-# LANGUAGE OverloadedStrings #-}
module Main where

import Stonks       as Stonks

import Turtle       as Turtle
import Paths_stonks (version)
import Data.Version (showVersion)

description :: Description
description = "Stonks is a command-line tool for retrieving stock fundamentals data."

args :: Parser (Text, Maybe Turtle.FilePath)
args = (,) <$> (argText "symbol" "The symbol(s) to return data for (comma separated).")
           <*> optional (optPath "csv" 'o' "Output to CSV file.")

-- Subcommand handler for retrieving price information.
price :: Parser (IO ())
price = fmap price' (subcommand "price" "Returns symbol price information." args)

-- Price retrieval subroutine.
price' :: (Text, Maybe Turtle.FilePath) -> IO ()
price' (s, _) = print s

-- Subcommand handler for retrieving balance sheets.
balance :: Parser (IO ())
balance = fmap balance' (subcommand "balance" "Returns symbol balance sheet." args)

-- Balance sheet retrieval subroutine.
balance' :: (Text, Maybe Turtle.FilePath) -> IO ()
balance' (s, _) = print s

-- Subcommand handler for retrieving income statements.
income :: Parser (IO ())
income = fmap income' (subcommand "income" "Returns symbol income statement." args)

-- Income statement retrieval subroutine.
income' :: (Text, Maybe Turtle.FilePath) -> IO ()
income' (s, _) = print s

-- Subcommand handler for printing version information.
version' :: Parser (IO ())
version' = subcommand "version" "Prints current version information." (pure v) 
           where v = putStrLn $ "Stonks " ++ showVersion version

parser :: Parser (IO ())
parser = price <|> balance <|> income <|> version' 

main :: IO ()
main = do command <- options description parser
          command

