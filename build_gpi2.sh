#!/bin/bash

# Verifica si el directorio del repositorio ya existe
if [ ! -d "Gpi2" ]; then
    # Clona el repositorio si no existe
    git clone https://github.com/jorge1451345/Gpi2.git
fi

# Cambia al directorio clonado de EasyBuggy
cd Gpi2/easybuggy\ 1.0

# Limpia y construye el proyecto EasyBuggy con Maven
mvn clean install

# Cambia al directorio clonado de Sakai
cd ../sakai\ 1.0

# Limpia y construye el proyecto Sakai con Maven
mvn install
