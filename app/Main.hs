{-# LANGUAGE OverloadedStrings #-}
module Main where

import Stonks as Stonks
import Tabular
import qualified Balance
import Turtle as Turtle

-- |Main application description, printed when "help" is called.
description :: Description
description = "Stonks is a command-line tool for retrieving stock fundamentals data."

-- |Base arguements for almost all subcommands.
args :: Parser (Text, (Text, Maybe Turtle.FilePath))
args = (,) <$> argText "symbol" "The symbol(s) to return data for (comma separated)."
           <*> args'
    where
        args' = (,) <$> argText "exchange" "The exchange the symbol(s) are on."
                    <*> optional (optPath "csv" 'o' "Output to CSV file (optional).") 

-- |Subcommand handler for retrieving balance sheets.
balance :: Parser (IO ())
balance = fmap balance' sc
    where
        sc = subcommand "balance" "Returns symbol balance sheet." args

-- |Balance sheet retrieval subroutine.
balance' :: (Text, (Text, Maybe Turtle.FilePath)) -> IO ()
balance' _ = putStrLn $ tabulate $ map (\x -> [x]) Balance.headers

-- |Subcommand handler for retrieving income statements.
income :: Parser (IO ())
income = fmap income' sc
    where
        sc = subcommand "income" "Returns symbol income statement." args

-- |Income statement retrieval subroutine.
income' :: (Text, (Text, Maybe Turtle.FilePath)) -> IO ()
income' (s, _) = print s

-- |Subcommand handler for retrieving cash-flow statements.
cashFlow :: Parser (IO ())
cashFlow = fmap cashFlow' sc 
    where
        sc = subcommand "cash-flow" "Returns symbol cash-flow statement." args

-- |Cash-flow statement retrieval subroutine.
cashFlow' :: (Text, (Text, Maybe Turtle.FilePath)) -> IO ()
cashFlow' (s, _) = print s

-- |Subcommand handler for retrieving fundamentals data. 
fundamentals :: Parser (IO ())
fundamentals = fmap fundamentals' sc 
    where
        sc = subcommand "fundamentals" "Returns symbol fundamentals data." args

-- |Fundamentals data retrieval subroutine.
fundamentals' :: (Text, (Text, Maybe Turtle.FilePath)) -> IO ()
fundamentals' (s, _) = print s

-- |Main application parser, handles access to all subcommands.
parser :: Parser (IO ())
parser = balance <|> income <|> cashFlow <|> fundamentals

main :: IO ()
main = do
    command <- options description parser
    command

