FROM jupyter/scipy-notebook

# insist on root user by default
USER root

# basic installs
RUN apt update && apt upgrade -y
RUN apt install -y apt-utils python3.8 python3-pip gcc libffi-dev python-dev default-libmysqlclient-dev python3-dev sqlite3 curl

# tesseract binary
RUN apt install -y install tesseract-ocr
RUN apt install -y libtesseract-dev

# python3 installs
RUN pip3 install pytesseract opencv-python