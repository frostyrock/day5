# day5

## default
  - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2

> benchmarking exitMutPart2/Storeable Vector<br>
> time                 137.7 ms   (136.9 ms .. 138.5 ms)<br>
>                      1.000 R²   (1.000 R² .. 1.000 R²)<br>
> mean                 137.9 ms   (137.6 ms .. 138.2 ms)<br>
> std dev              421.8 μs   (312.7 μs .. 575.5 μs)<br>
> variance introduced by outliers: 11% (moderately inflated)<br>

> benchmarking exitMutPart2/Unboxed Vector<br>
> time                 148.4 ms   (148.1 ms .. 148.7 ms)<br>
>                      1.000 R²   (1.000 R² .. 1.000 R²)<br>
> mean                 148.9 ms   (148.7 ms .. 149.3 ms)<br>
> std dev              361.7 μs   (171.1 μs .. 526.8 μs)<br>
> variance introduced by outliers: 12% (moderately inflated)<br>

## llvm
 - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2 -fllvm

> benchmarking exitMutPart2/Storeable Vector<br>
> time                 168.7 ms   (168.3 ms .. 169.3 ms)<br>
>                      1.000 R²   (1.000 R² .. 1.000 R²)<br>
> mean                 168.9 ms   (168.7 ms .. 169.1 ms)<br>
> std dev              260.2 μs   (155.4 μs .. 360.3 μs)<br>
> variance introduced by outliers: 12% (moderately inflated)<br>

> benchmarking exitMutPart2/Unboxed Vector<br>
> time                 147.4 ms   (147.0 ms .. 148.2 ms)<br>
>                      1.000 R²   (1.000 R² .. 1.000 R²)<br>
> mean                 147.3 ms   (147.0 ms .. 147.5 ms)<br>
> std dev              377.5 μs   (221.1 μs .. 523.4 μs)<br>
> variance introduced by outliers: 12% (moderately inflated)<br>
