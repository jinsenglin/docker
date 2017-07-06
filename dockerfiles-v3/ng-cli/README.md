# Build

```
docker build -t jimlintw/cli:ng -f Dockerfile .
```

# Usage

```
# equivalent to ng --version
docker run --rm jimlintw/cli:ng

# equivalent to ng new myapp
docker run --rm -v $PWD/data:/data jimlintw/cli:ng new myapp

# equivalent to cd myapp && ng serve --host 0.0.0.0
docker run --name myapp -d -v $PWD/data:/data -e "APP=myapp" -p 4200:4200 jimlintw/cli:ng serve --host 0.0.0.0
```
