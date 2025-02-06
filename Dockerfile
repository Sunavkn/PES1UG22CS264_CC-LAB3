FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
RUN apk add --no-cache git && \
    git clone https://github.com/Sunavkn/PES1UG22CS264_CC-LAB3.git /temp-repo && \
    cp -r /temp-repo/* . && \
    rm -rf /temp-repo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
