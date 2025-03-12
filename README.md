# 🚨 ANTI-CL - FiveM Anti-Combat Log

## 🌍 English Documentation

### 📖 Overview
ANTI-CL is a FiveM script designed to detect and log player disconnections, helping server owners combat "combat logging." Built with Lua and integrated with the vRP framework, it sends detailed disconnection logs to a Discord webhook and displays information in-game for nearby players.

### ✨ Features
- ✅ **Discord Webhook Integration:** Sends logs with player name, ID, reason, location, and timestamp.
- ✅ **In-Game Notification:** Displays a 3D text at the disconnection spot (name, ID, reason) for 18 seconds.
- ✅ **Range-Based Display:** Visible to players within 30 meters, with scaling based on distance.
- ✅ **Synchronized:** Works across all clients via server-client events.
- ✅ **Open Source:** Free to use and modify for your server.

### ⚙️ Prerequisites
- A FiveM server running GTA V.
- vRP Framework installed and configured.
- A Discord webhook URL for logging.
- Basic knowledge of FiveM resource installation.

### 📥 Installation & Usage
1. Clone or download this repository.
2. Copy the folder to your FiveM server's `resources` directory.
3. Add `ensure [the name you saved]` to your `server.cfg`.
4. Configure the Webhook: Edit `client.lua` and replace `local webhookURL = ""` with your Discord webhook URL.
5. Restart your server or use `refresh` followed by `start anti-cl`.

### 💡 How to Use:
- The script runs automatically when a player disconnects.
- Logs are sent to Discord, and a 3D text appears in-game at the disconnection location.

### 🛠️ Dependencies
- **vRP Framework:** Required for player identity and ID retrieval (`@vrp/lib/utils.lua`).

### ⚠️ Important Notes
- **Webhook Configuration:** You must provide a valid Discord webhook URL in `client.lua`.
- **Creative V5 Compatibility:** Tested only on Creative V5. May require route configuration to connect to the database for proper detection of player disconnections.
- **Project Status:** This is part of a stalled project. I’m sharing it as I’m unsure if it will be completed.
- **Potential Improvement:** The disconnection reason may be generic (e.g., "Disconnected"). Add custom logic for combat log detection if needed.

### 📝 License
Distributed under the MIT License. See the `LICENSE` file for more details.

---

## 🇧🇷 Documentação em Português

### 📖 Visão Geral
ANTI-CL é um script para FiveM projetado para detectar e registrar desconexões de jogadores, ajudando os donos de servidores a combater "combat logging." Desenvolvido em Lua e integrado ao framework vRP, ele envia logs detalhados para um webhook do Discord e exibe informações no jogo para jogadores próximos.

### ✨ Funcionalidades
- ✅ **Integração com Webhook do Discord:** Envia logs com nome, ID, motivo, localização e data/hora.
- ✅ **Notificação no Jogo:** Exibe um texto 3D no local da desconexão (nome, ID, motivo) por 18 segundos.
- ✅ **Exibição por Distância:** Visível para jogadores a até 30 metros, com escala ajustada pela distância.
- ✅ **Sincronizado:** Funciona em todos os clientes via eventos servidor-cliente.
- ✅ **Código Aberto:** Livre para uso e modificação no seu servidor.

### ⚙️ Pré-requisitos
- Um servidor FiveM rodando GTA V.
- Framework vRP instalado e configurado.
- Uma URL de webhook do Discord para os logs.
- Conhecimento básico de instalação de recursos no FiveM.

### 📥 Instalação & Uso
1. Clone ou baixe este repositório.
2. Copie a pasta para o diretório `resources` do seu servidor FiveM.
3. Adicione `ensure [o nome que você salvou]` ao seu `server.cfg`.
4. Configure o Webhook: Edite o `client.lua` e substitua `local webhookURL = ""` pela URL do seu webhook do Discord.
5. Reinicie o servidor ou use `refresh` seguido de `start anti-cl`.

### 💡 Como Usar:
- O script é ativado automaticamente quando um jogador se desconecta.
- Logs são enviados ao Discord, e um texto 3D aparece no jogo no local da desconexão.

### 🛠️ Dependências
- **Framework vRP:** Necessário para obter identidade e ID dos jogadores (`@vrp/lib/utils.lua`).

### ⚠️ Notas Importantes
- **Configuração do Webhook:** É necessário fornecer uma URL válida do Discord no `client.lua`.
- **Compatibilidade com Creative V5:** Testado apenas no Creative V5. Talvez seja necessário configurar rotas para conectar ao banco de dados e detectar a ação quando um jogador se desconectar.
- **Status do Projeto:** Este é parte de um projeto parado. Estou compartilhando pois não sei se será concluído.
- **Melhoria Possível:** O motivo da desconexão pode ser genérico (ex.: "Disconnected"). Adicione lógica personalizada para detectar combat log se desejar.

### 📝 Licença
Distribuído sob a Licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.
