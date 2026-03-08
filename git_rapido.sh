#!/bin/bash

# Verifica se você esqueceu de escrever a mensagem do commit
if [ -z "$1" ]; then
    echo "❌ Erro: Você esqueceu a mensagem do commit!"
    echo "Uso correto: ./git_rapido.sh \"Sua mensagem de atualizacao aqui\""
    exit 1
fi

echo "🚀 Preparando para subir o código..."

# Adiciona todos os arquivos modificados
git add .

# Cria o commit com a mensagem que você escreveu entre aspas
git commit -m "$1"

# Envia para o GitHub
git push

echo "✅ Código nas nuvens com sucesso!"