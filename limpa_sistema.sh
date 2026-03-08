#!/bin/bash

echo "🧹 Iniciando a faxina profunda do sistema..."

# 1. Remove pacotes que foram instalados como dependências e não são mais usados
echo "📦 Removendo pacotes órfãos..."
sudo apt autoremove -y

# 2. Limpa o cache de downloads do apt
echo "🗑️ Limpando cache do APT..."
sudo apt clean

# 3. Limpa logs antigos do sistema (mantém apenas os últimos 7 dias)
echo "📜 Limpando logs antigos do sistema..."
sudo journalctl --vacuum-time=7d

# 4. Esvazia a lixeira do Zorin OS
echo "♻️ Esvaziando a lixeira..."
rm -rf ~/.local/share/Trash/files/*
rm -rf ~/.local/share/Trash/info/*

echo "✨ Sistema limpo, otimizado e voando! 🚀"