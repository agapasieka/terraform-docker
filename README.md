# terraform-docker
Full tutorial: 
https://medium.com/@agnieszkapasieka/build-docker-image-locally-and-deploy-container-using-terraform-6306334fdf0a

1. Build the image
```
sudo su
docker build -t my_flask_image .
```
2. Deploy container with terraform 
```
terraform init
terraform apply
```