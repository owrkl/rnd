FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53/udp 53/tcp
CMD ["dnsmasq", "-k"]
