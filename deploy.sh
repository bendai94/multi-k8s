docker build -t bendai94/multi-client-10-14 -f ./client/Dockerfile ./client
docker build -t bendai94/multi-server-10-14 -f ./server/Dockerfile ./server
docker build -t bendai94/multi-worker-10-14 -f ./worker/Dockerfile ./worker
docker push bendai94/multi-client-10-14
docker push bendai94/multi-server-10-14
docker push bendai94/multi-worker-10-14

kubectl set image deployment/multi-client-deployment client=bendai94/multi-client:latest
