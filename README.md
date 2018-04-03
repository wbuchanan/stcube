# Mata Cartesian products in Stata
There currently are no native solutions to computing Cartesian products in Mata or Stata from a single data set.  While the `joinby` and/or `cross` commands in Stata could be used, they would suffer from performance penalties associated with the necessary I/O to leverage those commands.  More importantly, they could not compute the full set of values (e.g., including the null elemeent for each column vector that would be used to create sub-total and/or grand total row elements with something like `GROUP BY CUBE` in SQL).  

The goal of this library is to create the necessary Mata functionality to make it more efficient to compute the equivalent of an SQL cube.  With appropriate options/subclasses, this could provide a replacement for the `collapse` and/or `contract` commands in Stata without having to destroy the data in memory.  It would also provide more flexibility than the `table` command by allowing an arbitrary amount of nesting and arbitrary number of computations.  

One challenge will be handling of string and numeric data concurrently in the same dataset object.  




