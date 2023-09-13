# Dockerfile
FROM grafana/grafana

USER root

# Copy local configuration files to appropriate locations
COPY ./dashboard.yml /etc/grafana/provisioning/dashboards/main.yaml
COPY ./dashboards /var/lib/grafana/dashboards
COPY ./datasources/prometheus-ds.yml /etc/grafana/provisioning/datasources/prometheus-ds.yml

# Change the ownership of the files to grafana
RUN chown -R grafana:grafana /etc/grafana && \
    chown -R grafana:grafana /var/lib/grafana

USER grafana