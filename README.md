# Stonks
Stonks is a command-line tool for retrieving stock fundamentals data.

## Installation
```
$ git clone https://github.com/sradley/stonks.git
$ cd stonks
$ cabal update
$ cabal install
```

## Usage
```
$ stonks --help
```
```
Stonks is a command-line tool for retrieving stock fundamentals data.

Usage: stonks (balance | income | cash-flow | fundamentals)

Available options:
  -h,--help                Show this help text

Available commands:
  balance                  Returns symbol balance sheet.
  income                   Returns symbol income statement.
  cash-flow                Returns symbol cash-flow statement.
  fundamentals             Returns symbol fundamentals data.
```

### Retrieving Balance Sheets
```
$ stonks balance --help
```
```
Usage: stonks balance SYMBOL EXCHANGE [-o|--csv CSV]
  Returns symbol balance sheet.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  EXCHANGE                 The exchange the symbol(s) are on.
  -o,--csv CSV             Output to CSV file (optional).
  -h,--help                Show this help text
```

### Retrieving Income Statements
```
$ stonks income --help
```
```
Usage: stonks income SYMBOL EXCHANGE [-o|--csv CSV]
  Returns symbol income statement.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  EXCHANGE                 The exchange the symbol(s) are on.
  -o,--csv CSV             Output to CSV file (optional).
  -h,--help                Show this help text
```

### Retrieving Cash-flow Statements
```
$ stonks cash-flow --help
```
```
Usage: stonks cash-flow SYMBOL EXCHANGE [-o|--csv CSV]
  Returns symbol cash-flow statement.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  EXCHANGE                 The exchange the symbol(s) are on.
  -o,--csv CSV             Output to CSV file (optional).
  -h,--help                Show this help text
```

### Retrieving Fundamentals Data
```
$ stonks fundamentals --help
```
```
Usage: stonks fundamentals SYMBOL EXCHANGE [-o|--csv CSV]
  Returns symbol fundamentals data.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  EXCHANGE                 The exchange the symbol(s) are on.
  -o,--csv CSV             Output to CSV file (optional).
  -h,--help                Show this help text
```

