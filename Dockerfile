FROM docker.elastic.co/elasticsearch/elasticsearch:8.5.0

USER root
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch && \
    chown -R elasticsearch:elasticsearch /usr/local/bin/docker-entrypoint.sh

WORKDIR /usr/share/elasticsearch
EXPOSE 9200 9300
USER elasticsearch
# ENV ELASTIC_PASSWORD YPKPnybOpKL1234
CMD ["/usr/local/bin/docker-entrypoint.sh"]