FROM alpine:latest
VOLUME /mnt

CMD sysctl vm.overcommit_memory=1 && never > /sys/kernel/mm/transparent_hugepage/enabled && echo never > /sys/kernel/mm/transparent_hugepage/defrag
