module Tabular
( tabulate
) where

import Data.List
import Text.PrettyPrint.Boxes

-- |Converts a 2d array of Strings to a formatted table.
tabulate :: [[String]] -> String
tabulate tbl = render $ hsep 2 left (map (vcat left . map text) (transpose tbl))
