FROM jungleli/node18-base

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run build


CMD npm run start
