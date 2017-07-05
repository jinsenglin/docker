# Build

```
docker build -t ng-cli:latest -f Dockerfile .
```

# Usage

```
# equivalent to ng --version
docker run --rm ng-cli 

# equivalent to ng new myapp
docker run --rm -v $PWD/data:/data ng-cli new myapp

# equivalent to cd myapp && ng serve --host 0.0.0.0
docker run --name myapp -d -v $PWD/data:/data -e "APP=myapp" -p 4200:4200 ng-cli serve --host 0.0.0.0
```
