sudo docker build -t 95605/95605:1.0 --no-cache . \
&& sudo docker run -itd -p 3000:3000 --name 95605 95605/95605:1.0"" \
&& docker image inspect 95605/95605:1.0 | jq '.[].RootFS.Layers' \
&& echo "http://localhost:3000/" \
&& docker scout cves 95605/95605:1.0 \
&& echo "Logi:" \
&& docker exec -it 95605 cat logs/logs.log
