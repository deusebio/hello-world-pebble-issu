## Test

Dependencies:
* Docker
* Skopeo

### Playscript

Create the image

```bash
rockcraft pack
```

Import in docker

```bash
skopeo --insecure-policy \
       copy \
       oci-archive:"hello_1.0_amd64.rock" \
       docker-daemon:"hello:latest"
```

Run docker

```
docker run hello:latest
```

Check exit code

```bash
echo $?
```

The code should return 1.

