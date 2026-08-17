FROM diegosouzapw/omniroute:latest
ENV PORT=10000
ENV WEB_CONCURRENCY=0
EXPOSE 10000
CMD ["npm", "start"]
