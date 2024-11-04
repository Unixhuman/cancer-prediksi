FROM node:22.11.0
WORKDIR /app
ENV PORT 3000
ENV MODEL_URL 'https://storage.googleapis.com/cancer-prediksi/model-in-prod/model.json'
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "start"]
