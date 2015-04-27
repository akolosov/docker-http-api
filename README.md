docker-http-api
===============

Nginx frontend for http API backends

Usage
-----
To create the image `akolosov/http-api`, execute the following command on the akolosov-docker-http-api folder:

    docker build -t akolosov/http-api .

To run the image and bind the port:

    docker run -d -p 80:80 akolosov/http-api
    

You can now see your to http-api in your browser: `http://127.0.0.1/`
