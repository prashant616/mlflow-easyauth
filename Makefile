MLFLOW_IMAGE := mlflow-image:latest

.PHONY: build
build:
	docker build -t $(MLFLOW_IMAGE) .

.PHONY: start-server
start-server:
	docker run -d -p 8001:6000 --env-file=dev.env $(MLFLOW_IMAGE) bash /app/entry-point.sh
