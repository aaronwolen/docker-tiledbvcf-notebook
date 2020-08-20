# Jupyter Notebook for TileDB-VCF Development

## Tags

The `-dev` suffix specifies the `Dockerfile-dev` image.

* `stable`, `stable-dev`: most recent tagged released
* `latest`, `latest-dev`: latest version of `dev` branch
* `test`, `test-dev`: latest version of `dev` branch

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

Available build args:
* `BRANCH`: which TileDB-VCF git branch to clone (default: `master`)

```
docker build -f Dockerfile-dev -t aaronwolen/tiledbvcf-notebook:dev .
```
