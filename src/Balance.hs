module Balance
( BalanceSheet (..)
, headers
) where

import Tabular

headers :: [String]
headers = [ "Date"
          , "Symbol"
          , "Total Current Assets"
          , "Cash and Short Term Investments"
          , "Cash and Equivalents"
          , "Short Term Investments"
          , "Total Receivables, Net"
          , "Total Inventory"
          , "Other Current Assets, Total"
          , "Total Assets"
          , "Property/Plant/Equipment, Total - Net"
          , "Goodwill, Net"
          , "Intangibles, Net"
          , "Long Term Investments"
          , "Other Long Term Assets, Total"
          , "Total Current Liabilities"
          , "Accounts Payable"
          , "Notes Payable/Short Term Debt"
          , "Other Current Liabilities, Total"
          , "Total Liabilities"
          , "Total Long Term Debt"
          , "Deferred Income Tax"
          , "Other Liabilities, Total"
          , "Total Equity"
          , "Common Stock, Total"
          , "Retained Earnings"
          , "Other Equity, Total"
          , "Total Liabilities and Shareholders' Equity" ]

data BalanceSheet =
    BalanceSheet { date                         :: String
                 , symbol                       :: String
                 -- Total Current Assets
                 , totalCurrentAssets           :: Int -- Total Current Assets
                 , cashAndShortTermInvestments  :: Int --   Cash and Short Term Investments
                 , cashAndCashEquivalents       :: Int --     Cash and Equivalents
                 , shortTermInvestments         :: Int --     Short Term Investments
                 , netReceivables               :: Int --   Total Receivables, Net
                 , inventory                    :: Int --   Total Inventory
                 , otherCurrentAssets           :: Int --   Other Current Assets, Total 
                 -- Total Assets
                 , totalAssets                  :: Int -- Total Assets
                 , propertyPlantEquipmentNet    :: Int --   Property/Plant/Equipment, Total - Net 
                 , goodWill                     :: Int --   Goodwill, Net
                 , intangibleAssets             :: Int --   Intangibles, Net
                 , longTermInvestments          :: Int --   Long Term Investments
                 , otherNonCurrentAssets        :: Int --   Other Long Term Assets, Total
                 -- Total Current Liabilities
                 , totalCurrentLiabilities      :: Int -- Total Current Liabilities
                 , accountPayables              :: Int --   Accounts Payable
                 , shortTermDebt                :: Int --   Notes Payable/Short Term Debt
                 , otherCurrentLiabilities      :: Int --   Other Current Liabilities, Total
                 -- Total Liabilities  
                 , totalLiabilities             :: Int -- Total Liabilities
                 , longTermDebt                 :: Int --   Total Long Term Debt
                 , taxAssets                    :: Int --   Deferred Income Tax 
                 , otherLiabilities             :: Int --   Other Liabilities, Total
                 -- Total Equity
                 , totalStockholdersEquity      :: Int -- Total Equity
                 , commonStock                  :: Int --   Common Stock, Total
                 , retainedEarnings             :: Int --   Retained Earnings
                 , othertotalStockholdersEquity :: Int --   Other Equity, Total
                 -- Total Liabilities and Shareholders' Equity
                 , totalLiabilitiesAndStockholdersEquity :: Int } 

instance Show BalanceSheet where
    show _ = tabulate $ map (\x -> [x]) headers

