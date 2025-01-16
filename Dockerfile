# Use a imagem base apropriada para o seu servidor (por exemplo, Node.js)
FROM node:14

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de configuração e dependências
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código da aplicação
COPY . .

# Exponha a porta em que o servidor será executado
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["npm", "start"]