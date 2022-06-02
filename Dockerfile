FROM jungleli/node18-base

WORKDIR /app

COPY package.json .
# COPY package-lock.json .

RUN PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true npm install

COPY . .

RUN npm run build


CMD PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable npm run start
