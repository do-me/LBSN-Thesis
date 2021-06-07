All SQL code is formatted with https://sqlformat.darold.net/. 
There are few examples for different kinds of basic queries. 

## Contents
1. Basic HLL union
2. Basic HLL intersection 
3. Basic aggregation
4. Spatial filter

Based on these samples, many different query combinations can be executed. 

**Note**: HLL unions can be performed with any number of HLL sets of different sizes. HLL intersections should only be applied to a few HLL sets of approximately the same size. Else, the individual error rates (3-5%) might be larger than the results.
