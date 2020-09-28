# Stonks
Stonks is a command-line tool for retrieving stock fundamentals data.

## Usage
```
$ stonks --help
Stonks is a command-line tool for retrieving stock fundamentals data.

Usage: stonks (price | balance | income)

Available options:
  -h,--help                Show this help text

Available commands:
  price                    Returns symbol price information.
  balance                  Returns symbol balance sheet.
  income                   Returns symbol income statement.
```

### Retrieving Price Information
```
$ stonks price --help
Usage: stonks price SYMBOL [-o|--csv CSV]
  Returns symbol price information.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  -o,--csv CSV             Output to CSV file.
  -h,--help                Show this help text
```

### Retrieving Balance Sheets
```
$ stonks balance --help
Usage: stonks balance SYMBOL [-o|--csv CSV]
  Returns symbol balance sheet.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  -o,--csv CSV             Output to CSV file.
  -h,--help                Show this help text
```

### Retrieving Income Statements
```
$ stonks income --help
Usage: stonks income SYMBOL [-o|--csv CSV]
  Returns symbol income statement.

Available options:
  SYMBOL                   The symbol(s) to return data for (comma separated).
  -o,--csv CSV             Output to CSV file.
  -h,--help                Show this help text
```
