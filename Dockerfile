FROM pytorch/pytorch:nightly-devel-cuda10.0-cudnn7

MAINTAINER elbum@hanmail.net

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

ENV LANG=ko_KR.UTF-8
ENV TZ=Asia/Seoul
ENV LC_ALL=C.UTF-8
ENV PYTHONENCODING=utf_8
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN apt-get update
RUN apt-get -y install vim

WORKDIR /root/datascience
RUN chmod -R a+w .

#This is only for cuda 10

