ct-name = you-want-that

start : create
	docker container start ${ct-name}


create :
	docker container stop ${ct-name} && docker container rm ${ct-name}
	docker image build -t ${ct-name}:latest .
	docker container create --name ${ct-name} -p 80:80 ${ct-name}:latest

# publish :
