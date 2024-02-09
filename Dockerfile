# Use the official Grafana base image
FROM grafana/grafana

# Copy Grafana configuration files and provisioning files
COPY ./config /etc/grafana
COPY ./data /var/lib/grafana
COPY ./provisioning /etc/grafana/provisioning

# Expose Grafana port
EXPOSE 3000

# Set Grafana data directory as a volume
VOLUME ["/var/lib/grafana"]
