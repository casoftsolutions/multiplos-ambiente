# Use uma imagem base oficial do Node.js
FROM node:20-alpine

# Configurar o diretório de trabalho dentro do container
WORKDIR /app

# Copiar apenas os arquivos necessários para o build (primeiro package.json e package-lock.json)
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar os demais arquivos da aplicação para o container
COPY . .

# Expôr a porta usada pela aplicação (por exemplo, 3000)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]