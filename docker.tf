# Define the Docker container data source

data "docker_image" "local_image" {

  name = "my_flask_image"

}

# Define the Docker container resource

resource "docker_container" "my_app" {

  name  = "my_app"

  image = data.docker_image.local_image.name
  
  #command = ["sleep", "15"] 

  # Expose port 5000 for Flask app

  ports {

    internal = 5000

    external = 5000

  }

}

# # Terraform provisioner to wait for container to be ready

# resource "null_resource" "wait_for_container" {

#   depends_on = [docker_container.my_app]

#   # Local-exec provisioner to wait for container to be ready

#   provisioner "local-exec" {

#     command = "sleep 20"

#   }
# }


