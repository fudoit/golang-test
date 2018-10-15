# iron/go:dev is the alpine image with the go tools added
FROM iron/go:dev
WORKDIR /app
# Set an env var that matches your github repo name, replace treeder/dockergo here with your repo name
# Add the source code:
# Build it:
ENV SRC_DIR=/go/src/github.com/fudoit/golang-test/
ADD . $SRC_DIR
RUN  cd $SRC_DIR; go build -o myapp; cp myapp /app/
ENTRYPOINT ["./myapp"]
