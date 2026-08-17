FROM diegosouzapw/omniroute:3.8.49

ENV DATA_DIR=/app/data \
    APP_LOG_TO_FILE=false \
    OMNIROUTE_MEMORY_MB=384 \
    NODE_OPTIONS=--max-old-space-size=384

EXPOSE 20128

ENTRYPOINT ["/usr/bin/env", "HOSTNAME=0.0.0.0", "HOST=0.0.0.0", "API_HOST=0.0.0.0", "PORT=20128", "node", "dev/run-standalone.mjs"]
