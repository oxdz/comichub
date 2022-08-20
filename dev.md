# Build Image

## Install containerd, runc and CNI plugins

Document URL: https://github.com/containerd/containerd/blob/main/docs/getting-started.md

## Install nerdctl

> you can try nerdctl-full, it includes containerd, runc, CNI plugins, buildkit, etc.

Releases URL: https://github.com/containerd/nerdctl/releases


## Install buildkit

Releases URL: https://github.com/moby/buildkit/releases

Systemd Service File URL: https://github.com/moby/buildkit/tree/master/examples/systemd/system

## Build image

[multi-platform doc](https://github.com/containerd/nerdctl/blob/master/docs/multi-platform.md)

```bash
sudo nerdctl run --privileged --rm tonistiigi/binfmt --install all
sudo nerdctl build --platform amd64,arm64  .
```

or

```bash
sudo nerdctl run --privileged --rm tonistiigi/binfmt --install all
sudo nerdctl build --platform amd64,arm64  . --build-arg "https_proxy=http://your-proxy-addr"
```
