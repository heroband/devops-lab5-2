echo "...Building a Docker image..."
docker build -t nextjs-dev-image .

echo "...Launching the container..."
docker run --rm --name nextjs-dev -p 3000:3000 \
  --mount type=bind,source="$(pwd)",target=/app \
  --mount type=volume,target=/app/node_modules \
  nextjs-dev-image