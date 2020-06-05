# Jupyter Notebook for TileDB-VCF Development

Build

```
docker build -t aaronwolen/tiledbvcf-notebook:latest .
```

Run

```
docker run \
  -p 8888:8888 \
  -v "$PWD":/home/jovyan/work \
  aaronwolen/tiledbvcf-notebook:latest
```
