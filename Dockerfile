FROM python:3.14
WORKDIR /gh
ARG GH_EMAIL \
        GH_USER
ENV GH_EMAIL=$GH_EMAIL \
        GH_USER=$GH_USER
COPY Makefile requirements.txt ./
RUN make install &&\
        git config --global user.email $GH_EMAIL &&\
        git config --global user.name $GH_USER
CMD ["/bin/bash"]
