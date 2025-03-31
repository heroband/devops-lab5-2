Write-Host "...Building a Docker image..."
docker build -t nextjs-dev-image .

Write-Host "...Launching the container..."
docker run --rm --name nextjs-dev -p 3000:3000 `
  --mount type=bind,source="${PWD}",target=/app `
  --mount type=volume,target=/app/node_modules `
  nextjs-dev-image