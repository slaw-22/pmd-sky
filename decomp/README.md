# Compare a Single Function with asm-differ
Run these commands from tools/asm-differ
## Set Up For ARM32
Update diff_settings.py as follows:
```
def apply(config, args):
    config["baseimg"] = "target.bin"
    config["myimg"] = "source.bin"
    config["mapfile"] = "build.map"
    config["source_directories"] = ["."]
    # config["show_line_numbers_default"] = True
    config["arch"] = "arm32"
    # config["map_format"] = "gnu" # gnu, mw, ms
    # config["build_dir"] = "build/" # only needed for mw and ms map format
    # config["expected_dir"] = "expected/" # needed for -o
    # config["makeflags"] = []
    config["objdump_executable"] = "arm-none-eabi-objdump"

```

## Copy Object Files 
Copy the target and expected object files to the asm-differ directory
```
mkdir expected
cp ../../decomp/build/target.o expected/object.o
cp ../../decomp/build/current.o ./object.o
```

## Run Asm-Differ
```
source bin/activate
python diff.py --file=object.o sub_0204CE00 -o --no-pager | grep -Eo 'CURRENT.+\)' | grep -Eo '[0-9]+'
```