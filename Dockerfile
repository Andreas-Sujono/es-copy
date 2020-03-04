# #Dockerfile for client only 
# FROM tarampampam/node

# COPY ./es-client /app
# WORKDIR /app

# # ENV HOST='http://54.169.88.207/'
# # ENV API_HOST='http://localhost:2001'

# VOLUME ./es-client:/app

# EXPOSE 2000

# RUN npm install
# CMD npm start




# #Dockerfile for api only 
# FROM mhart/alpine-node

# COPY ./es-api /app
# WORKDIR /app

# ENV PRIVATE_KEY=/app/private.key
# ENV PUBLIC_KEY=/app/public.key
# # ENV MONGO_USERNAME='sginnovate'
# # ENV MONGO_PASSWORD='angguanyang'
# # ENV MONGO_DB='admin'
# # ENV MANDRILL_API_KEY='Y8tAqU3t9FX5gpn_MDTjZA'
# # ENV ORIGINS='["http://localhost:2000"]'

# VOLUME ./es-api:/app
# EXPOSE 2001

# CMD sh -c "apk --no-cache add --virtual builds-deps build-base python && apk add --update python g++ make && npm install && npm install bcrypt && npm start"




#Dockerfile for mongo only 
FROM mongo

COPY ./mongod.conf /etc

# ENV MONGO_INITDB_ROOT_USERNAME=sginnovate
# ENV MONGO_INITDB_ROOT_PASSWORD=angguanyang

VOLUME ./mongod.conf:/etc/mongod.conf

EXPOSE 27017
EXPOSE 30000

CMD ["mongod", "-f", "/etc/mongod.conf"]