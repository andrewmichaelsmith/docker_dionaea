run:
	docker build -t andrewmichaelsmith/dionaea:latest .

shell:
	docker run --rm -ti andrewmichaelsmith/dionaea:latest /bin/bash
