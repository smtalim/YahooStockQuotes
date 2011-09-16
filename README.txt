Accessing Stock Data from Yahoo

A neat way to download stock data from Yahoo is using a URL like:

http://finance.yahoo.com/d/quotes.csv?s= a BUNCH of STOCK SYMBOLS separated by "+" &f=a bunch of special tags

(Refer http://www.gummy-stuff.org/Yahoo-data.htm for more details on the special tags.)

asqfy.rb program accesses the stock data and displays the same.

To run the program, type:

ruby asqfy.rb INTC

where INTC is the Stock symbol of the company Intel Corporation.

Remember, that the stock symbols are the Nasdaq Stock Symbols - http://www.nasdaq.com/asp/comlookup.asp?page=empty


Have fun!