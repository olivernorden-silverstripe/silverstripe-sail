
ServerName ${APP_URL}
DocumentRoot ${DOCUMENT_ROOT}
LogLevel warn
ServerSignature Off
<Directory ${DOCUMENT_ROOT}>
  Options +FollowSymLinks
  Options -ExecCGI -Includes -Indexes
  AllowOverride all

  Require all granted
</Directory>
<LocationMatch assets/>
  php_flag engine off
</LocationMatch>