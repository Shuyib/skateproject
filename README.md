# skateproject
A report about a contest held on 7th January 2017. It involved skateboarders from all over the world performing an ollie over an obstacle as well recording the heights achieved - this was calibrated on the obstacle. The event was organized by skate-aid (http://www.skate-aid.org). For more information check out the document.

# How to run docker file
# build the image
```bash
docker build -t highest-ollie .
```

# run the image
```bash
docker run -v $(pwd):/home/rstudio -it highest-ollie
```