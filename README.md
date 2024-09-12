# Docker Windows (with nftables)
This is [dockur's QEMU Windows container][dockur/windows]
with _nftables_ installed and the _network.sh_ script modified to use _nftables_
intead of _iptables_.

This seems to be necessary if the container's host is using _nftables_, as the
_iptables_ commands fail and cause the network cards to run in user mode, which
slows them down significantly.

See [dockur/windows][dockur/windows] for usage and instructions.

The _network.sh_ script was sourced from [qemus/qemu-docker][qemus/qemu-docker].

## Links
GitHub: <https://github.com/moonbuggy/docker-windows-nftables>

Docker Hub: <https://hub.docker.com/r/moonbuggy2000/windows-nftables>

## Upstream images
*   [dockur/windows][dockur/windows]
*   [qemus/qemu-docker][qemus/qemu-docker]

[dockur/windows]: https://github.com/dockur/windows
[qemus/qemu-docker]: https://github.com/qemus/qemu-docker
