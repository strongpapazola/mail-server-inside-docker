# mail-server-inside-docker
mail-server-inside-docker


<li>Run <code>docker compose up -d</code> to initialize the mailserver and retrieve an SSL certificate. (To renew the certificate, you have to run <code>docker compose up -d cerbot</code>, you can automate that by running cron once a month.)</li>
<li>Add a mail user: <code>docker exec -ti mailserver setup email add &lt;user@domain&gt;</code></li>
<li>Add DKIM: <code>docker exec -ti mailserver setup config dkim</code></li>
<li>Copy the content of the file&nbsp;<code>docker-data/dms/config/opendkim/keys/example.com/mail.txt</code> &nbsp;and add it to your DNS as a TXT record.</li>

