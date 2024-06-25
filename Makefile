www/*.html: jem/*.jemdoc
	cd jem && ../jemdoc -c mysite.conf  -o ../www/ *.jemdoc

dev:
	cd www && python3 -m http.server