# docker-monovar

```
$ docker run -it --rm -v ~/projects/refs/:/refs monovar
```

```
$ cd /opt/monovar/examples
$ samtools mpileup -BQ0 -d10000 -f /refs/hg18/hg18.fa -q 40 -b filenames.txt | monovar -p 0.002 -a 0.2 -t 0.05 -m 2 -f /refs/hg18/hg18.fa -b filenames.txt -o output.vcf
```

## References

- https://www.nature.com/articles/nmeth.3835
- https://bitbucket.org/hamimzafar/monovar/overview
