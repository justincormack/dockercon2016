all: run

run:
	docker run -d -v $(CURDIR):/src -p 8080:8080 --restart=unless-stopped alpine httpd -f -p 8080 -h /src -c httpd.conf
