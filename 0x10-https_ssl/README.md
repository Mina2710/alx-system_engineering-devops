# HTTPS and SSL Implementation

During this project, I gained insight into the significance of HTTPS and its operational mechanisms. I successfully configured the HolbertonBnB web servers using `certbot` certificates and implemented HAproxy SSL termination.

## Tasks Overview :page_with_curl:

* **Task 1: World Wide Web**
  * [1-world_wide_web](./0-world_wide_web): This Bash script displays information regarding subdomains on the configured servers.
  * Usage: `./1-world_wide_web <domain> <subdomain>`
  * Output Format: `The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]`
  * If no `subdomain` parameter is provided, it will exhibit information about the subdomains `www`, `lb-01`, `web-01`, and `web-02`, following that order.

* **Task 2: HAproxy SSL Termination**
  * [2-haproxy_ssl_termination](./2-haproxy_ssl_termination): This file comprises the HAproxy configuration responsible for accepting encrypted SSL traffic for the subdomain `www.` on TCP port 443.

* **Task 3: Ensuring No Loopholes in Website Traffic**
  * [100-redirect_http_to_https](./100-redirect_http_to_https): This HAproxy configuration file is designed to automatically redirect HTTP traffic to HTTPS, ensuring a secure connection.
