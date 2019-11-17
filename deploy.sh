
# Build the image with your tag with Docker file.

docker build -t Speech_recog_v1.0 -f speechRecogDocker .
docker tag Speech_recog_v1.0 myregistrydomain.com:5000/speech_recog_v1.0
docker push myregistrydomain.com:5000/Speech_recog_v1.0

kubectl apply -f SpeechRecogDeploy.yml -n azure-ramji

kubectl get pods -n azure-ramji
