# Assemble Target
```
wine ./tools/mwccarm/2.0/sp2p2/mwasmarm.exe -DGAME_REMASTER=0 -DNORTH_AMERICA -DPM_KEEP_ASSERTS -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM -proc arm5te -gccinc -DSDK_ASM -gccdep -MD -o tools/asm-differ/expected/object.o path/to/file.asm
```

# Compile C
wine ./tools/mwccarm/2.0/sp2p2/mwccarm.exe -O4,s -DGAME_REMASTER=0 -DNORTH_AMERICA -DPM_KEEP_ASSERTS -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM -enum min -lang c99 -Cpp_exceptions off -gccext,on -proc arm946e -msgstyle gcc -gccinc -i ./include -i ./include/library -i ./files -I./lib/include -interworking -inline on,noauto -char signed -W all -W pedantic -W noimpl_signedunsigned -W noimplicitconv -W nounusedarg -W nomissingreturn -W error -i ./include -i ./include/library -i ./files -I./lib/msl/include/MSL_C -I./lib/DSE/include -i build/pmdsky.us/precompile/ -gccdep -MD -c -o tools/asm-differ/object.o path/to/file.c