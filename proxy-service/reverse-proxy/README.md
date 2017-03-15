# Purposes

- Orchestration of requests and responses
- Encryption (Secure Sockets Layer SSL)
- Load balancing
- Compression: speedup the load time
- Caching
- Single point of entry: increses security, only ports 80 (HTTP) & 443 (HTTPS) would be available to the public usage. All other ports required by services would open to the internal use.
- Different type of authentication
- Bridge between the outside world and all the services we host internally

# Examples

- <a href="nginx/README.md">Nginx</a>
- HAProxy
