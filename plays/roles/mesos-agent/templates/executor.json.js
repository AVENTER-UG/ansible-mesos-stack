{
    "LIBPROCESS_SSL_ENABLED" : "{{ libprocess_enable_ssl }}",
    "LIBPROCESS_SSL_ENABLE_TLS_V1_3" : "{{ libprocess_enable_ssl }}",
    "LIBPROCESS_SSL_SUPPORT_DOWNGRADE": "{{ libprocess_ssl_enable_downgrade }}",
    "LIBPROCESS_SSL_VERIFY_CERT" : "{{ libprocess_enable_ssl_verify }}",
    "LIBPROCESS_SSL_REQUIRE_CERT" : "{{ libprocess_ssl_require_cert }}",
    "LIBPROCESS_SSL_KEY_FILE": "/etc/mesos/ssl/mesos.key",
    "LIBPROCESS_SSL_CERT_FILE": "/etc/mesos/ssl/mesos.crt"
}
