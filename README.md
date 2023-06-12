# S206_Karate_Teste_de_API


## Instalação do ambiente de desenvolvimento:

1. Git Bash (Git for Windows - mais leve)
https://gitforwindows.org/

2. Nodejs (node):
https://nodejs.org/en/

3. IDE VSCode (code):
https://code.visualstudio.com/
OBS: Pode usar qualquer IDE. Eclipse, InteliJ...fica a seu critério.

4. JDK (java):
https://www.oracle.com/java/technologies/javase-downloads.html

5. Maven (mvn)
https://maven.apache.org


## Instalação - Karate (Teste de API):

1. Utilizaremos o maven (mvn) para fazer a instalação do Karate via pom.xml. Então crie um projeto Maven e cole a seguinte dependencia no pom.xml:

```
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.1.0</version>
    <scope>test</scope>
</dependency>
```

2. Abre o terminal e digite o comando, no diretório do pom.xml criado anteriormente.

```
mvn clean install
```


Após a instalação de todos os itens, teste seu ambiente:
Abra a linha de comando (gitbash ou cmder) e digite:

### Testando as instalações

```
which git
which node
which code (Se tiver usando o VSCode)
which mvn
```
A resposta de cada comando deve ser o local de instalação de cada ferramenta.

```
java --version
mvn --version
```
A resposta de cada comando deve ser a versão instalada.


### Comandos úteis Karate:

```
Criar estrutura inicial Karate:

mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=1.0.1 \
-DgroupId=aula.inatel \
-DartifactId=aula_inatel

Executar um teste a partir do Runner ou suíte:
mvn test –Dtest=StarWarsRunner

Executar testes separados por tags:
mvn test -Dkarate.options="--tags @tag”

Para ignorar alguma tag:
mvn test -Dkarate.options="--tags ~@tag" 

Todas as tags podem ser configuradas na classe da suíte de testes. (InatelTest.Java)

```
