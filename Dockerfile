# Imagem base do Node.js
FROM node:18-alpine

# Criar diretório de trabalho
WORKDIR /usr/src/app

# Copiar package.json e instalar dependências
COPY app/package*.json ./
RUN npm install

# Copiar o restante dos arquivos
COPY app .

# Expor a porta
EXPOSE 3000

# Comando para iniciar o app
CMD ["npm", "start"]
