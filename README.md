# day5

## default
  - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2

|   Vector   |   time   |
|------------|----------|
| Storable   | 242.9 ms |
| Unboxed    | 258.8 ms |


## llvm 3.9
 - ghc-options: threaded -rtsopts -with-rtsopts=-N -O2 -fllvm

|   Vector   |   time   |
|------------|----------|
| Storable   | 56.77 ms |
| Unboxed    | 58.77 ms |

for more detail see day5_default_bench.html and  day5_llvm_bench.html
