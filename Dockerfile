FROM golang:1.23-alpine

WORKDIR /app

# ก๊อปปี้โค้ดทั้งหมดเข้ามา
COPY . .

# ติดตั้ง Dependencies และ Build
RUN go build -o main .

EXPOSE 8080

CMD ["./main"]