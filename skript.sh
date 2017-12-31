#!/bin/bash

: '
groupId == dycky se vytvori src a v nem main/java a test/java. dal se struktura
  balicku tvori tak jak to uvedu v tomto argumentu
archetypeArtifactId == moc zajimava vec, kde maven za me vytvori adresarovou
  strukturu projektu tak jak "ma bejt".

  maven-archetype-quickstart == mi vygeneruje zakladni strukturu projektu
    kde mam pom.xml a adresare na zdrojaky a na testy

  tady jsou moznost, ktere se mohou objevit:
  https://maven.apache.org/guides/introduction/introduction-to-archetypes.html
'
COMMAND="mvn archetype:generate
-DgroupId=cesta.k.balicku
-DartifactId=NazevProjektu
-DarchetypeArtifactId=maven-archetype-quickstart
-DinteractiveMode=false"
COMMAND=""

: '
tady mi prijde ze maven vygeneruje jakousi j2ee strukturu projektu. a ignoruje,
kdyz mu dam parametr groupId. aspon mi to tak ted prijde
'
COMMAND="mvn archetype:generate
-DgroupId=cz.pkg
-Dpackage=pkg
-DartifactId=NazevProjektu
-DarchetypeArtifactId=maven-archetype-j2ee-simple
-DinteractiveMode=false"
COMMAND=""

COMMAND="mvn archetype:generate
-DgroupId=cesta.k.balicku
-Dpackage=pkg
-DartifactId=NazevProjektu
-DarchetypeArtifactId=maven-archetype-webapp
-DinteractiveMode=false"

eval $COMMAND
