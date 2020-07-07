# Jupyter Notebook for TileDB-VCF Development

Build

```
docker build -t aaronwolen/tiledbvcf-notebook:latest .
```

Run

```
docker run --rm \
  -p 8888:8888 \
  -v "$PWD":/home/jovyan/work \
  -e JUPYTER_ENABLE_LAB=yes \
  aaronwolen/tiledbvcf-notebook:latest
```
