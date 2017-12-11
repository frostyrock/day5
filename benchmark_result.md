# default
  - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2

> day5-0.1.0.0: benchmarks
> Running 1 benchmarks...
> Benchmark time: RUNNING...
> benchmarking exitMutPart2/Storeable Vector
> time                 137.7 ms   (136.9 ms .. 138.5 ms)
>                      1.000 R²   (1.000 R² .. 1.000 R²)
> mean                 137.9 ms   (137.6 ms .. 138.2 ms)
> std dev              421.8 μs   (312.7 μs .. 575.5 μs)
> variance introduced by outliers: 11% (moderately inflated)
>
> benchmarking exitMutPart2/Unboxed Vector
> time                 148.4 ms   (148.1 ms .. 148.7 ms)
>                      1.000 R²   (1.000 R² .. 1.000 R²)
> mean                 148.9 ms   (148.7 ms .. 149.3 ms)
> std dev              361.7 μs   (171.1 μs .. 526.8 μs)
> variance introduced by outliers: 12% (moderately inflated)
>
> Benchmark time: FINISH
> Completed 2 action(s).

# llvm
 - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2 -fllvm

> day5-0.1.0.0: benchmarks
> Running 1 benchmarks...
> Benchmark time: RUNNING...
> benchmarking exitMutPart2/Storeable Vector
> time                 168.7 ms   (168.3 ms .. 169.3 ms)
>                      1.000 R²   (1.000 R² .. 1.000 R²)
> mean                 168.9 ms   (168.7 ms .. 169.1 ms)
> std dev              260.2 μs   (155.4 μs .. 360.3 μs)
> variance introduced by outliers: 12% (moderately inflated)
>
> benchmarking exitMutPart2/Unboxed Vector
> time                 147.4 ms   (147.0 ms .. 148.2 ms)
>                      1.000 R²   (1.000 R² .. 1.000 R²)
> mean                 147.3 ms   (147.0 ms .. 147.5 ms)
> std dev              377.5 μs   (221.1 μs .. 523.4 μs)
> variance introduced by outliers: 12% (moderately inflated)
>
> Benchmark time: FINISH
> Completed 2 action(s).