# day5

## default
  - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2

|   Vector   |   time   |
|------------|----------|
| Storable   | 224.6 ms |
| Unboxed    | 237.3 ms |


## llvm
 - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2 -fllvm

|   Vector   |   time   |
|------------|----------|
| Storable   | 278.8 ms |
| Unboxed    | 286.4 ms |

for more detail see day5_default_bench.html and  day5_llvm_bench.html
