# 🚀 Protocolo DeFi MVP - Residência TIC 29

Este repositório contém o MVP (Produto Mínimo Viável) de um ecossistema descentralizado composto por um Token ERC-20, um NFT de governança (Badge) e um contrato de Staking. O projeto foi desenvolvido como parte das atividades da Residência TIC 29.

## 🌐 Link do Dashboard (Live Demo)
Acesse a interface funcional através do GitHub Pages:
👉 [CLIQUE AQUI PARA ACESSAR O SITE](https://cristiano2rodrigues.github.io/U1C501T1_CristianoRodrigues/)

---

## 🛠 Tecnologias Utilizadas
- **Solidity 0.8.20**: Linguagem para os Smart Contracts.
- **OpenZeppelin**: Padrões de segurança para ERC-20 e ERC-721.
- **Ethers.js (v5.7.2)**: Biblioteca para integração entre o frontend e a blockchain.
- **Remix IDE**: Ambiente de desenvolvimento e deploy.
- **GitHub Pages**: Hospedagem da aplicação descentralizada (dApp).
- **MetaMask**: Wallet para assinatura de transações.

---

## 📍 Endereços dos Contratos (Rede Sepolia)
Os contratos foram publicados na rede de teste Sepolia nos seguintes endereços:

* **ProtocolToken:** `0x758b9a473B5F33a582e914a49a6589E49435e4f7`
* **ProtocolNFT:** `0x5b824cbb33Fc798c600Bf8F39427392b0A843DF5`
* **StakingContract:** `0x2E3bA6C4374BD668A011254e4ec25775c9C8F84B`

---

## 📂 Estrutura do Repositório
- `/contracts`: Contém os arquivos fonte (.sol) dos contratos inteligentes.
- `index.html`: Interface do usuário integrada com a MetaMask.
- `README.md`: Documentação do projeto.

---

## 🚀 Como interagir com o projeto
1.  Certifique-se de ter a extensão **MetaMask** instalada no navegador.
2.  Alterne a rede para **Sepolia Testnet**.
3.  Acesse o link do Dashboard acima.
4.  Clique em **"1. Conectar MetaMask"** para autorizar o site.
5.  Utilize os botões de **Mint**, **Stake** e **Voto** para interagir com os contratos via blockchain.

---

## 🛡️ Segurança e Boas Práticas
- Utilização de `ReentrancyGuard` para prevenir ataques de reentrada no contrato de Staking.
- Implementação de controle de acesso via `Ownable`.
- Uso de bibliotecas padrão da indústria para garantir a compatibilidade e segurança dos tokens.

---
**Desenvolvido por:** Cristiano Rodrigues  
**Projeto para:** Residência TIC 29 - Módulo Blockchain/Web3
