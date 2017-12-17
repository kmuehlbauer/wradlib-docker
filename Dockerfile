FROM wradlib/wradlib-docker:base

MAINTAINER wradlib <wradlib@wradlib.org>

USER root

# Install wradlib + runtime dependencies
RUN conda create --yes -n wradlib \
    python=3.6 \
    wradlib=0.11.* \
    gdal \
    numpy \
    scipy \
    matplotlib \
    netcdf4 \
    h5py \
    xmltodict && \
    conda clean -tipy

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]
