
all:
	echo "try 'make renum' or 'make upload'"

upload:
	rsync -r \
		--exclude .git \
		./ \
		dreamhost:artificialworlds.net/presentations/examples-of-kotlin-making-code-better/

renum:
	mv examples-of-kotlin-making-code-better.html examples-of-kotlin-making-code-better-old.html
	./renumber < examples-of-kotlin-making-code-better-old.html > examples-of-kotlin-making-code-better.html
