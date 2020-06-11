apt-get update

# install docker cli
# apt-get install docker.io -y

# install go-swagger
chmod +x /usr/bin/swagger

# # install goreleaser
# curl -sfL https://install.goreleaser.com/github.com/goreleaser/goreleaser.sh | sh

# # install azure cli
# export DEBIAN_FRONTEND=noninteractive
# apt-get install -y apt-transport-https lsb-release gnupg curl
# curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.asc.gpg
# echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" \
#   > /etc/apt/sources.list.d/azure-cli.list
# apt-get update
# apt-get install -y azure-cli

# # install kubectl
# curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

