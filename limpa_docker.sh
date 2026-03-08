#!/bin/bash

echo "🐳 Iniciando a limpeza do Docker..."

# Remove todos os containers que estão parados (não mexe nos que estão rodando)
echo "🛑 Removendo containers parados..."
docker container prune -f

# Remove todas as imagens de sistemas e bancos que não estão sendo usadas por nenhum container
echo "🖼️ Removendo imagens sem uso (dangling)..."
docker image prune -a -f

# Remove redes do docker que não estão sendo usadas
echo "🌐 Removendo redes não utilizadas..."
docker network prune -f

# Remove volumes (discos virtuais do docker) que não estão atrelados a nada
echo "💾 Removendo volumes órfãos..."
docker volume prune -f

echo "✅ Docker limpo! Seu SSD agradece."