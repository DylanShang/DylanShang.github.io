www/*.html: jem/*
	cd jem && ../jemdoc -c mysite.conf  -o ../www/ *.jemdoc

server:
	cd www && python3 -m http.server &
	@echo "Watching for changes..."
	@fswatch -o jem | while read f; do make; done