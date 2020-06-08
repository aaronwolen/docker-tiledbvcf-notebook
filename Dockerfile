FROM jupyter/minimal-notebook:latest

USER root
RUN apt-get update && apt-get install --no-install-recommends -y \
    tree \
    parallel \
    && apt-get clean \
    && apt-get purge -y \
    && rm -rf /var/lib/apt/lists*

USER $NB_USER
COPY conda-env.yml .
RUN conda env update -n base -f conda-env.yml \
    && conda clean -a -y \
    && rm conda-env.yml
