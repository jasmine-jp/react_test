export PATH := ./test/node_modules/.bin:$(PATH)

.PHONY: clean, down, run

default:
	docker compose up -d

clean:
	rm -f -R test

down:
	docker compose down
	docker system prune -a

run:
	npx create-react-app test
	cd test && rm -f -R .git && npm start