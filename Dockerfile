FROM jupyter/minimal-notebook:latest

COPY conda-env.yml .
RUN conda env update -n base -f conda-env.yml \
    && conda clean -a -y \
    && rm conda-env.yml
