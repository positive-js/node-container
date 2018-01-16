set -e

TAG=$1
if [ -z $TAG ]
  then echo "usage: $0 [tag]"; exit 1
fi

docker build . -t ptsecurity/node-container:$TAG
docker tag ptsecurity/node-container:$TAG ptsecurity/node-container:latest
docker push ptsecurity/node-container:$TAG
docker push ptsecurity/node-container:latest
git tag -a $TAG -m "published to docker"
git push --tags
