# docker-postfix

Minimal Docker image for **Postfix** based on **Alpine Linux**.

To run it : `docker run --name postfix -d --restart=always -p 25:25 -v /etc/postfix:/etc/postfix fallais/docker-postfix`