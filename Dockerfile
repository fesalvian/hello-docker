# Usa imagem base oficial do Node
FROM node:20-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante dos arquivos
COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Comando pra iniciar o app
CMD ["node", "index.js"]
