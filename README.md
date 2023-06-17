# TCH_Zadanie1
Technologie Chmurowe: Zadanie 1

## Zbudowanie i uruchomienie
Do zbudowania i uruchomienia potrzebny jest zainstalowany docker, jq, node, npm.

Polecenie:
```bash
  bash zadanie1.sh
```

Zrzuty ekranów:
![image](https://github.com/kwierzbowski/TCH_Zadanie1/assets/83925877/c3062a5d-bc4c-464e-b7ae-2c811e955791)
![image](https://github.com/kwierzbowski/TCH_Zadanie1/assets/83925877/4ed54336-dd66-4049-a470-2a3628790ea4)


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
