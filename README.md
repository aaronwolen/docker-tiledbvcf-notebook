# Jupyter Notebook for TileDB-VCF Development

## Stable

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

## Development

A second image is included that builds the CLI and Python module directly from the GitHub repo.

```
docker build -f Dockerfile-dev -t aaronwolen/tiledbvcf-notebook:dev .
```
