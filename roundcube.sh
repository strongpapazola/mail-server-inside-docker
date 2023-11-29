#docker run -d --name roundcube -e ROUNDCUBEMAIL_DEFAULT_HOST=imap.hostinger.com -e ROUNDCUBEMAIL_SMTP_SERVER=smtp.hostinger.com --net development roundcube/roundcubemail

docker run -d \
  --name roundcube \
  --net development \
  -e ROUNDCUBEMAIL_DEFAULT_HOST=ssl://mail.arnatech.id \
  -e ROUNDCUBEMAIL_DEFAULT_PORT=993 \
  -e ROUNDCUBEMAIL_SMTP_SERVER=tls://mail.arnatech.id \
  -e ROUNDCUBEMAIL_SMTP_PORT=587 \
  roundcube/roundcubemail


# docker exec -ti mailserver setup email add arif@arnatech.id


