# Dockerfile
FROM grafana/grafana

USER root

# Copy local configuration files to appropriate locations
COPY ./dashboard.yml /etc/grafana/provisioning/dashboards/main.yaml
COPY ./dashboards /var/lib/grafana/dashboards
COPY ./datasources /etc/grafana/provisioning/datasources
