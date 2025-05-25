FROM fedora:38

RUN dnf -y update && \
    dnf -y install git nodejs npm && \
    dnf clean all

RUN git clone https://github.com/Kyorasawa/Website.git /app

WORKDIR /app

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
