FROM ubuntu:24.04
# nodig voor de timezone
ENV DEBIAN_FRONTEND=noninteractive

# Apache 2 installeren (die Y moet erbij want anders loopt het script vast)
RUN apt update
RUN apt install apache2 -y

# buildtime.txt aanmaken met de huidige UTC tijd
RUN date > /var/www/html/buildtime.txt

# Copy de html van github clone naar de apache
COPY html/ /var/www/html/


# poort 81 gebruiken
EXPOSE 81/tcp

#Apache starten en die bash moet erbij anders sluit de container
CMD service apache2 start && bash

