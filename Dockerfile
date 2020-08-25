FROM registry.access.redhat.com/ubi8/go-toolset:1.13.4 as builder

RUN git clone https://github.com/operator-framework/operator-registry

WORKDIR /opt/app-root/src/operator-registry

RUN make build

#####

FROM registry.access.redhat.com/ubi8:latest

COPY --from=builder /opt/app-root/src/operator-registry/bin/opm /bin/opm

# This image doesn't need to run as root user
USER 1001

ENTRYPOINT ["/bin/opm"]

