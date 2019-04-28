# class-vs-struct
Demonstration for Class vs Struct performance.

## Result :
It compares struct and class with one variable in first example. In second example compares struct and class with 10 variables in it. Code is compiled on iPhone XR, iOS 12.1 with Release build and compiler setting to Whole code optimisation.

- Class version took 1.11 seconds
- Struct version took 3.80e-08 seconds(around 3,00,00,000 times faster)

On multiple runs with this example, there is very less variance under 5%. This is just small example for demonstration and result may vary depends on variables inside struct/class.

## Note :
This code is compiled on Xcode 10.1 with Swift 4.2 language.
