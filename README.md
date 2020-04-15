# DockerSSLValidation
This docker image is used to verify you own a domain.
Simply place the verification file in the directory
/html/.well-known/pki-validation

and then go to DockerFile and change the environment variable to your domain name: e.g

ENV DOMAIN_NAME=www.facebook.com 