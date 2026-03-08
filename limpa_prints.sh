#!/bin/bash

# ==============================================================================
# SCRIPT DE LIMPEZA DE PRINTS (WIPE TOTAL)
# Executado via Cron a cada 5 dias
# ==============================================================================

DIRETORIO_PRINTS="$HOME/Imagens/Capturas de tela"

# 1. Verifica se a pasta existe
if [ -d "$DIRETORIO_PRINTS" ]; then
    
    # 2. Verifica se existem arquivos para deletar
    if [ -n "$(ls -A "$DIRETORIO_PRINTS" 2>/dev/null)" ]; then
        echo "🧹 Iniciando limpeza total da pasta de prints..."
        
        # Deleta todos os arquivos dentro da pasta
        find "$DIRETORIO_PRINTS" -type f -delete
        
        echo "✅ A pasta de prints foi zerada com sucesso!"
    else
        echo "ℹ️ Pasta vazia. Nada para limpar."
    fi
fi