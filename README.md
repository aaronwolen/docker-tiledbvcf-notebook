# Jupyter Notebook for TileDB-VCF Development

## Tags

The `-dev` suffix specifies the `Dockerfile-dev` image.

* `stable`, `stable-dev`: most recent tagged released
* `latest`, `latest-dev`: latest version of `dev` branch
* `test`, `test-dev`: latest version of `dev` branch

## Stable

Build

```
docker build -t aaronwolen/tiledbvcf-notebook:stable .
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

## Notes

Built on the last version of `jupyter/minimal-notebook` that used python 3.7 since TileDB-VCF is still [pinned at python < 3.8](https://github.com/TileDB-Inc/TileDB-VCF/blob/2afe1dd5d2310350715ec865bba9d09d8a51c665/apis/python/setup.py#L306).
