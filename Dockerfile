FROM jupyter/minimal-notebook:b90cce83f37b

ENV AWS_EC2_METADATA_DISABLED true

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
    'python=3.7.*' \
    'bioconda::bcftools=1.10.*' \
    'bioconda::pybedtools=0.8.*' \
    'tiledb::libtiledbvcf=0.5.*' \
    'tiledb::tiledbvcf-py=0.5.*' \
    && conda clean --all -f -y

RUN pip install git+https://github.com/TileDB-Inc/TileDB-Cloud-Py.git
