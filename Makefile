.PHONY: clean, down, temp, redux

default:
	docker compose up -d

clean:
	rm -f -R test

down:
	docker compose down
	docker system prune -a

temp:
	npx create-react-app --template typescript
	cd test && rm -f -R .git && npm start

redux:
	cd redux && npm start