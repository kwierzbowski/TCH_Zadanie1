# syntax=docker/dockerfile:1

# Wybór obrazu bazowego
FROM alpine 

# Etykieta autora pliku Dockerfile
LABEL maintainer="Klaudiusz Wierzbowski"

# Ustalenie katalogu roboczego wewnątrz kontenera
WORKDIR /app

# Kopiowanie plików app.js i package.json do katalogu /app w kontenerze
COPY app.js package.json /app/

# Instalacja Node.js i npm, nie zapisując paczek w pamięci podręcznej
RUN apk add --no-cache nodejs npm && npm install

# Healthcheck kontenera 

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/ || exit 1

# Deklaracja ekspozycji portu 3000
EXPOSE 3000

# Uruchomienie aplikacji Node.js
CMD ["node", "app.js"]
