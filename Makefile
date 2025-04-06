src=src/game/GameComponent.java src/game/ListeningGameComponent.java src/game/World.java src/util/Util.java src/math/*.java src/model/*.java src/MathHero.java
pkg=mathhero.jar
main=MathHero

SRCDIR=src
BINDIR=bin
CLASSPATH=$(BINDIR)

all:
	mkdir -p $(BINDIR)
	find $(SRCDIR) -name "*.java" -print | xargs javac -d $(BINDIR)

package: all
	../package.sh ${pkg} ${main}

doc:
	javadoc ${src} -d doc/

play: all
	java -cp $(CLASSPATH) MathHero

clean:
	rm -rf $(BINDIR)
	rm -rf doc
	rm -f ${pkg}
