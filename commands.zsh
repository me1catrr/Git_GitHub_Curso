# Instalación

git
git --version
git -v
git -h	# help

# Configuración

git config
git config --global user.name "RafaCastro"
git config --global user.email "rcastro@uco.es"

# Inicialización de un repositorio

git init # ficheros ocultos CMD+Mayús+.

# Ramas

git config --global init.defaultBranch main
git branch -m name 	# i.e. en lugar de llamarla master que sea main

# Guardado

git status 
git add <archivo>	# para añadir un fichero a guardar el commit
git add . 			# para añadir todos los ficheros que tenga en uso
git commit -m "<mensaje>"

# Estado

git log 	# te muestra los commits que has hecho
			# para salir pulsar la letra "q"

git status 	# muestra el estado en el que estás ahora
			# si te falta hacer un commit o similar

# Operaciones con ramas

git checkout <archivo>  # para situarnos en un punto concreto de la rama
						# y si no has hecho commit el archivo regresa a su estado anterior
						# aunque lo hubieras modificado y guardado (Command+S)			

git reset 					# para volver al último commit hecho
git log --graph				# para visualizar las ramas de una forma sencilla
git log --pretty=oneline	# ramas en líneas
git log --decorate			# ramas sencillas

# .gitignore

touch .gitignore		# para no tener en cuenta algunos archivos 
git add .gitignore		# para incluir el fichero .gitignore

# Comparación de commits

git diff				# muestra las diferencias de los archivos
git diff <hash_commit_a> <hash_commit_b> # muestra las diferencias de los archivos entre commits
git diff --name-only <hash_commit_a> <hash_commit_b>

# Desplazamiento

git checkout <hash>		# te regresa al hash del commit seleccionado
git checkout HEAD -- .

git checkout main		# para hacer que el HEAD esté en el main

# Reset y log de referencias

git reset --hard			# para eliminar todo hasta ese hash
git reset --hard <hash>
git reflog					# te muestra todo lo que se ha hecho
							# y te permite mostrarte los hash para regresar
							# al punto que quieras

# Etiquetas

git tag						# ponerle etiquetas a los commits
git tag <nombre_tag> 
git tag <nombre_tag> <hash_commit>
git show <nombre_tag>
git checkout <nombre_tag>
git tag -d <nombre_tag>

# Creación de ramas

git branch <nombre_rama>	# crea una rama de trabajo
git switch <nombre_rama>	# para cambiar de rama

# Combinación de ramas

git merge <nombre_rama>		# para combinar ramas

