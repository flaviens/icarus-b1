# Runtime error in Icarus

To reproduce, run `bash run.sh` in this directory.

Expected result: 

```
Output signature:           2617245696.
```


Actual result:

```
Output signature:           2663645184.
```

Specifically, the value of `celloutsig_3z` is expected to be `0x34EC0000` but is `0x34000000`.
This can be viewed in the produced `icarus_dump.vcd` file.
