# delete albums.yaml and visit http://localhost:3000/db/albums.yaml
path = File.expand_path "../../../", __FILE__

`rm -f #{path}/db/albums.yaml`
