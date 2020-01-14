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
#RUN conda update --all
#RUN conda install -y pytorch=1.0 torchvision cudatoolkit=10.0 -c pytorch
#RUN conda install -y jupyter

#COPY requirements.txt /root/datascience/requirements.txt
#RUN pip install -r requirements.txt

#RUN jupyter notebook --generate-config --allow-root
#RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py

#CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=.", "--ip=0.0.0.0", "--port=8888", "--no-browser"]


