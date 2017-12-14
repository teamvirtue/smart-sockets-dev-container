# VIRTUe smart sockets Jupyter development container
---

This is the container-based development environment for [VIRTUe](https://teamvirtue.nl/). It is used as a sandbox to test the provided datasets. All the created notebooks are saved in [a different repository](https://github.com/teamvirtue/smart-sockets-dev).

### Prepare the space shuttle
Before continuing, make sure you gather all the fuel for the launch:

- Git [(download it here)](https://git-scm.com/downloads)
- Docker Community Edition (CE) [(download it here)](https://www.docker.com/community-edition)

_To install Docker on Windows you need to have a Windows versions which supports Hyper-V. At this moment Docker for Windows runs on 64-bit Windows 10 Pro, Enterprise and Education (1607 Anniversary Update, Build 14393 or later)._

Okay! Our rocket is now loaded with all the fuel.

### Space suit up!
Now it is time to put our dusty space suits on. You are guided by Ground Control.

_Ground Control: "Hi, {name}! First we need [some music](https://open.spotify.com/track/2KHRENHQzTIQ001nlP9Gdc). I think you have to repeat it four times or something before we are actually in space."_

_Ground Control: "Clone the repository."_

```sh
git clone --recursive https://github.com/teamvirtue/smart-sockets-dev-container
```

_Ground Control: "Here are all the secret files we need to enter space. Ready to enter the shuttle?"_

_Ground Control: "First, go to the space shuttle."_

Go to the recently cloned repository.

```sh
cd smart-sockets-dev-container
```

Enter the shuttle by building the image. It will take a while. Don't forget to enter the correct DRED credentials.

```sh
docker build . --force-rm --build-arg DRED_USER=[INSERT DRED USERNAME] --build-arg DRED_PASSWORD=[INSERT DRED PASSWORD] --build-arg DRED_URL=[INSER DRED.h5 URL]
```

_Ground Control: "In the end, this will return a secret key to launch the space ship (`Successfully built a36620c4954dz`). Please copy this key (in our case `a36620c4954dz`)."_

### Ready? 3, 2, 1 launch!

_Ground Control: "Enter the following command to start the launching procedure."_

Browse in your terminal or in PowerShell to the git directory from the first first step.

```sh
cd [PATH TO smart-sockets-dev-container]
```

_Ground Control: "LAUNCH!"_

**Linux / MacOS:**

```sh
docker run -p 8888:8888 -v "${PWD}/notebooks":"/home/jovyan/work" --rm [INSERT KEY]
```
**Windows (PowerShell):**

```powershell
docker run -p 8888:8888 -v ${PWD}\notebooks:/home/jovyan/work --rm [INSERT KEY]
```

### On the way to Jupyter

```sh
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=b9f5647fce64559bdb3213eea70ca62796900cdfbe9e694a
```

_Ground Control: "Copy and paste the URL in the browser."_

### Push changes back to earth


You can open this directory in your Git Application (f.e. Sourcetree or GitKraken). You can also leave your mouse alone and use your keyboard:

```sh
git add -p
git commit
```
