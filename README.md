# docker-monovar

```
$ docker run -it --rm -v ~/projects/refs/:/refs monovar
```

```
$ cd /usr/bin/monovar/examples
$ python ../src/monovar.py  -p 0.002 -a 0.2 -t 0.05 -m 2 -f /refs/hg18/hg18.fa -b filenames.txt -o output.vcf
```