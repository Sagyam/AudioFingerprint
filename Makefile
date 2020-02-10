.PHONY: tests

install:
	@echo soon

clean:
	@find . -name \*.pyc -delete

reset:
	@python reset-database.py

tests:
	@python tests/*.py

stat:
	@python get-database-stat.py

collect: clean
	@python collect-fingerprints-of-songs.py

listen5: clean
	@python recognize-from-microphone.py -s 5

listen8: clean
	@python recognize-from-microphone.py -s 8
	
listen10: clean
	@python recognize-from-microphone.py -s 10
	
listen15: clean
	@python recognize-from-microphone.py -s 15
recognize-file: clean
	@python recognize-from-file.py
