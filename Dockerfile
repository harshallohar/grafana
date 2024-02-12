# Use the official Grafana base image
FROM grafana/grafana:latest

# Copy the configuration file
COPY ./custom.ini /etc/grafana/grafana.ini

# Expose Grafana port
EXPOSE 3000

# Start Grafana server
CMD ["grafana-server", "--config=/etc/grafana/grafana.ini"]

