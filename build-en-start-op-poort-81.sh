<<<<<<< HEAD
# Docker imaga builden met naam dw2 
docker build -t dw2 .
# container starten op poor 81(fort forwarding)
docker run -dt -p 81:80 --name dw2container dw2
=======
# Docker imaga builden met naam dw2 
docker build -t dw2 .

# container starten op poor 81(fort forwarding)
docker run -dt -p 81:80 --name dw2container dw2

>>>>>>> 6d239683a9f2cb448792c30111f96aa30813a112
