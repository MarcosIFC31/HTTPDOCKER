## Seleccio de la imatge base
# Especificam un ubunt 22.04
FROM ubuntu:22.04

# Iniciam la instalacio del servei bind9
RUN apt-get update -y && \
    apt install apache2 -y

## Ejecucio de les instruccions per arrancar el contenidor
# Montam les carpetes persistents
VOLUME /etc/apache2
CMD ["named", "-g"]

# Exposam els port utilizats
EXPOSE 80:80/tcp
EXPOSE 443:443/tcp

#RUN cp www.buguisoft.com.conf /etc/apache2/sites-avaliable/www.buguisoft.com.conf
#RUN a2ensite www.buguisoft.com.conf && 
RUN sudo systemctl reload apache2


