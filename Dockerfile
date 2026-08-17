FROM diegosouzapw/omniroute:3.8.49

ENV HOSTNAME=0.0.0.0 \
    PORT=20128 \
    DATA_DIR=/app/data \
    APP_LOG_TO_FILE=false \
    OMNIROUTE_MEMORY_MB=384 \
    NODE_OPTIONS=--max-old-space-size=384

EXPOSE 20128

ENTRYPOINT ["node", "dev/run-standalone.mjs"]
