FROM busybox:1

WORKDIR /
EXPOSE 8080
COPY app /
ENV MSG="Welcome Ku-bies!"

CMD ["/app", "-port=8080"]
