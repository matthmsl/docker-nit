import docker

# Main demo program

# Load the lib
print """var lib = new DockerEngine"""
var lib = new DockerEngine
# Create a container
print """lib.createContainer("alpine","monSuperContainer")"""
lib.createContainer("alpine","monSuperContainer")
print "-----"
# Show containers
print """lib.containers"""
print "Conteneurs actifs : {lib.containers}"

for container in lib.containers
do
	container.getStatus
end


print "-----"
# Show images
print """lib.images"""
print "Images sur le système {lib.images}"
print "-----"




# Delete images&containers
print "================PHASE DE SUPPRESSION============="

lib.pruneContainers
for image in lib.images do
        lib.destroyImage(image)
end
