# 🛠️ Meus Scripts Linux (Zorin OS)

Este repositório contém o meu "canivete suíço" de automação para Linux. Aqui organizo scripts criados para facilitar a instalação de ambientes, manutenção do sistema e produtividade no fluxo de trabalho com Git e Docker.

## 🚀 O que tem por aqui?

* **`setup_dev.sh`**: Script de instalação completa do meu ambiente de desenvolvimento (Java, Python, Docker, IntelliJ, VS Code, etc.).
* **`limpa_sistema.sh`**: Faxina automática no sistema (limpeza de cache APT, logs antigos e lixeira).
* **`limpa_docker.sh`**: Limpeza profunda de containers, imagens e volumes órfãos do Docker para economizar espaço.
* **`git_rapido.sh`**: Atalho para realizar `add`, `commit` e `push` em uma única linha de comando.
* **`limpa_prints.sh`**: Automação para zerar a pasta de capturas de tela a cada 5 dias, mantendo o diretório `Imagens/Capturas de tela` sempre organizado.

## ⚙️ Como usar

Antes de rodar qualquer script, é necessário dar permissão de execução:

```bash
chmod +x nome_do_script.sh
./nome_do_script.sh
