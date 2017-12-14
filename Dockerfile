# Copyright (c) Jupyter Development Team.
# Changed by Team VIRTUe
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Jort Polderdijk <jort@teamvirtue.nl>"

ARG DRED_USER
ARG DRED_PASSWORD
ARG DRED_URL

USER root

RUN conda install --quiet --yes \
    'pip' && \
    pip install coveralls \
    hmmlearn==0.1.1 \
    psycopg2 \
    future \
    git+https://github.com/nilmtk/nilm_metadata.git#egg=nilm_metadata \
    git+https://github.com/nilmtk/nilmtk.git#egg=nilmtk && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR

RUN mkdir data && \
    cd data && \
    wget --user $DRED_USER --password $DRED_PASSWORD $DRED_URL

USER $NB_USER
