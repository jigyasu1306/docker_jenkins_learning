FROM ubuntu:20.04
USER root
RUN apt update && apt upgrade -y
RUN apt-get update && apt-get install -y software-properties-common gcc && \
add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y python3.6 python3-distutils python3-pip python3-apt
RUN DEBIAN_FRONTEND='noninteractive' apt install apturl -y
RUN pip3 install -r requirements.txt
CMD ["python3","main.py"]
