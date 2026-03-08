#!/bin/bash

# ==============================================================================
# SCRIPT DE INSTALAÇÃO DO AMBIENTE DE DESENVOLVIMENTO
# Focado em: Java (IntelliJ), Python, Bancos de Dados e DevOps
# Compatível com distribuições baseadas em Debian/Ubuntu (Zorin, Mint, Pop!_OS)
# ==============================================================================

echo "🚀 Iniciando a preparação do ambiente de desenvolvimento..."

# 1. Atualizando o sistema
echo "📦 Atualizando os pacotes do sistema..."
sudo apt update && sudo apt upgrade -y

# 2. Instalando ferramentas base, linguagens e virtualização via APT
echo "🛠️ Instalando Python, Java, Git, Zsh, VirtualBox e Docker..."
sudo apt install curl wget git python3-pip python3-venv default-jdk zsh virtualbox docker.io docker-compose -y

# 3. Adicionando o usuário ao grupo do Docker (para não precisar usar sudo toda vez)
echo "🐳 Configurando permissões do Docker..."
sudo usermod -aG docker $USER

# 4. Instalando aplicativos robustos via Snap
echo "💻 Instalando VS Code, IntelliJ, DBeaver, Discord, Obsidian e Insomnia..."
sudo snap install code --classic
sudo snap install intellij-idea-community --classic
sudo snap install dbeaver-ce --classic
sudo snap install discord
sudo snap install obsidian --classic
sudo snap install insomnia

# 5. Instalando e configurando o Oh My Zsh (Modo autônomo para não travar o script)
echo "👾 Instalando Oh My Zsh e plugins..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Baixando os plugins do Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Ativando os plugins no arquivo .zshrc
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

# Definindo o Zsh como o terminal padrão
sudo chsh -s $(which zsh) $USER

echo "✅ Instalação concluída com sucesso! É altamente recomendado REINICIAR o computador agora."