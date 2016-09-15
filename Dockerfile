FROM busybox:1

WORKDIR /
EXPOSE 8080
COPY app /
ENV MSG="Hello Kubernauts!"

CMD ["/app", "-port=8080"]
