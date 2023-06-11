# Menggunakan base image yang sesuai dengan runtime Anda
# Misalnya, jika Anda menggunakan Node.js, gunakan node:<versi> sebagai base image
FROM node:latest

# Set working directory di dalam kontainer
WORKDIR /app

# Copy package.json dan package-lock.json (jika ada) ke dalam kontainer
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh kode aplikasi ke dalam kontainer
COPY . .

# # Jalankan perintah untuk mem-build aplikasi Anda
# # Gantilah perintah ini dengan perintah build yang sesuai untuk aplikasi Anda
# RUN npm run build

# Atur command yang akan dijalankan saat kontainer dijalankan
# Gantilah perintah ini dengan perintah yang sesuai untuk menjalankan aplikasi Anda
CMD [ "node", "server.js" ]
