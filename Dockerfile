FROM jupyter/minimal-notebook:54462805efcb

ENV AWS_EC2_METADATA_DISABLED true

USER root
RUN apt-get update && apt-get install --no-install-recommends -y \
    tree \
    parallel \
    && apt-get clean \
    && apt-get purge -y \
    && rm -rf /var/lib/apt/lists*

USER $NB_USER

RUN conda install -c conda-forge -c bioconda -c tiledb --quiet --yes  \
    'bash_kernel' \
    'libtiledbvcf=0.6.*' \
    'tiledbvcf-py=0.6.*' \
    'bcftools=1.11.*' \
  && conda clean --all -f -y
