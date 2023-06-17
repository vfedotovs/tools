# Tools 2023


## To find files by name  
```sh
rg --files  | rg vobd.all

or alias rgf='rg --files | rg' 
```

## To find and open files in vim   
```sh
fo
```

## To grep for keyword over files with incinsistent path
```sh
grep -r keyword *

grep -r -c vsan | grep vobd.all  # To count ococurances and filter for specific file

```

## Faster serches with rg
```sh
rg -c vsan . | rg vobd.all
```



