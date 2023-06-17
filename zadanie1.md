# Zadanie 1 
Technologie Chmurowe: Zadanie 1

## Uruchomienie
Do uruchomienia potrzebny jest zainstalowany docker, jq, node, npm.

Polecenie do uruchomienia:
```bash
  bash zadanie1.sh
```

## Polecenia niezbędne do:
a. zbudowania opracowanego obrazu kontenera
```bash
  sudo docker build -t 95605/95605:1.0 --no-cache .clear
```
b. uruchomienia kontenera na podstawie zbudowanego obrazu
```bash
  sudo docker run -itd -p 3000:3000 95605/95605:1.0""
```
c. sposobu uzyskania informacji, które wygenerował serwer w trakcie uruchamiania kontenera
```bash
  docker exec -it 95605 cat logs/logs.log
```
d. sprawdzenia, ile warstw posiada zbudowany obraz
```bash
  docker image inspect 95605/95605:1.0 | jq '.[].RootFS.Layers'
```