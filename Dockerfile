
FROM golang:1.22

WORKDIR /app

# Копируем go.mod и go.sum для установки зависимостей
COPY go.mod ./
COPY go.sum ./

# Скачиваем зависимости
RUN go mod download

# Копируем оставшиеся файлы проекта
COPY . .

# Сборка
RUN go build -o app

# Запуск
CMD ["./app"]
