docker build -t bendai94/multi-client-10-14:latest -t bendai94/multi-client-10-14:$SHA -f ./client/Dockerfile ./client
docker build -t bendai94/multi-server-10-14:latest -t bendai94/multi-server-10-14:$SHA -f ./server/Dockerfile ./server
docker build -t bendai94/multi-worker-10-14:latest -t bendai94/multi-worker-10-14:$SHA -f ./worker/Dockerfile ./worker
docker push bendai94/multi-client-10-14:latest
docker push bendai94/multi-server-10-14:latest
docker push bendai94/multi-worker-10-14:latest
docker push bendai94/multi-client-10-14:$SHA
docker push bendai94/multi-server-10-14:$SHA
docker push bendai94/multi-worker-10-14:$SHA

kubectl set image deployment/multi-client-deployment client=bendai94/multi-client:$SHA
kubectl set image deployment/multi-server-deployment server=bendai94/multi-server:$SHA
kubectl set image deployment/multi-worker-deployment worker=bendai94/multi-worker:$SHA
