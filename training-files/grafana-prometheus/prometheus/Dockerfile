# Dockerfile
FROM prom/prometheus

# Copy local configuration files to appropriate locations
COPY ./prometheus.yml /etc/prometheus/prometheus.yml

# Change the ownership of the file to nobody (Prometheus default user)
USER nobody