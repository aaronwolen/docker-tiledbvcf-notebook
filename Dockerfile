FROM jupyter/minimal-notebook:latest

USER root
RUN apt-get update && apt-get install --no-install-recommends -y \
    tree \
    parallel \
    && apt-get clean \
    && apt-get purge -y \
    && rm -rf /var/lib/apt/lists*

USER $NB_USER
RUN conda install --quiet --yes \
    'bash_kernel' \
    'bioconda::bcftools=1.10.*' \
    'bioconda::pybedtools=0.8.*' \
    'tiledb::libtiledbvcf=0.4.*' \
    'tiledb::tiledbvcf-py=0.4.*' \
    && conda clean --all -f -y

RUN pip install git+https://github.com/TileDB-Inc/TileDB-Cloud-Py.git
