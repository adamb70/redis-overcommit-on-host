FROM alpine:latest
VOLUME /mnt

CMD sysctl vm.overcommit_memory=1 && echo never > /sys/kernel/mm/transparent_hugepage/enabled && echo never > /sys/kernel/mm/transparent_hugepage/defrag
