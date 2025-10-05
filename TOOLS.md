# Instalação de Tools

## Índice

- [Instalação de Tools](#instalação-de-tools)
  - [Índice](#índice)
  - [AWS CLI](#aws-cli)
  - [Docker](#docker)
  - [Helm](#helm)
  - [Kubectl](#kubectl)
  - [Kustomize](#kustomize)
  - [Terraform CLI](#terraform-cli)
  - [VS Code](#vs-code)
  - [Zoom](#zoom)

## AWS CLI

- **macOS:**

```bash
brew install awscli
aws -–version
```

- **Linux (Ubuntu/Debian):**

```bash
sudo apt update
sudo apt install awscli -y
aws -–version
```

- **Windows (PowerShell):**

```bash
winget install –id Amazon.AWSCLI
aws -–version
```

## Docker

- **macOS:**

```bash
brew install –cask docker
```

- **Linux (Ubuntu/Debian):**

```bash
sudo apt update
sudo apt install
ca-certificates
curl
gnupg
lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg –dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo “deb arch=$(dpkg –print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable” | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER
docker -–version
```

- **Windows:**
  [Baixar Docker Desktop](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe) e instalar normalmente.

## Helm

- **macOS:**

```bash
brew install helm
helm version
```

- **Linux (Ubuntu/Debian):**

```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
```

- **Windows (PowerShell):**

```bash
choco install kubernetes-helm
helm version
```

## Kubectl

- **macOS:**

```bash
brew install kubectl
kubectl version –client
```

- **Linux (Ubuntu/Debian):**

```bash
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo “deb signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg https://apt.kubernetes.io/ kubernetes-xenial main” | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install -y kubectl
kubectl version –client
```

- **Windows (PowerShell):**

```bash
choco install kubernetes-cli
kubectl version –client
```

## Kustomize

- **macOS:**

```bash
brew install kustomize
kustomize version
```

- **Linux (Ubuntu/Debian):**

```bash
sudo apt update
sudo apt install -y kustomize
kustomize version
```

- Alternativamente:

```bash
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
sudo mv kustomize /usr/local/bin
kustomize version
```

- **Windows (PowerShell):**

```bash
choco install kustomize
kustomize version
```

## Terraform CLI

- **macOS:**

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
terraform -version
```

- **Linux (Ubuntu/Debian):**

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg –dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo “deb signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg https://apt.releases.hashicorp.com $(lsb_release -cs) main” | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform
terraform -version
```

- **Windows (PowerShell):**

```bash
choco install terraform
terraform -version
```

## VS Code

- **macOS:**

```bash
brew install –cask visual-studio-code
```

- **Linux (Ubuntu/Debian):**

```bash
sudo snap install –classic code
```

- **Windows (PowerShell):**

```bash
winget install –id Microsoft.VisualStudioCode
```

## Zoom

- **macOS:**

```bash
brew install –cask zoom
```

- **Linux (Ubuntu/Debian):**
  [Baixar o .deb do Zoom](https://zoom.us/download#client_4meeting), instalar normalmente:

```bash
sudo dpkg -i zoom_amd64.deb
sudo apt-get install -f
```

- **Windows:**
  [Baixar o instalador do Zoom](https://zoom.us/download)
