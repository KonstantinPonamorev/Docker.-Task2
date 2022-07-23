docker build . --tag=stocks_products
docker run -p 8000:6060 stocks_products