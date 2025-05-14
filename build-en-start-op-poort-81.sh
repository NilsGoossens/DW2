# Docker imaga builden met naam dw2 
docker build -t dw2 .

# container starten op poor 81(fort forwarding)
docker run -dt -p 81:80 --name dw2container dw2

