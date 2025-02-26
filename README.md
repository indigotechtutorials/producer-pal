# Producer PAL 🎶

#### Built by Indigo Tech Tutorials Using Glimmer DSL SWT

To run code first ensure you have glimmer installed

Here is the instructions for installing glimmer and jruby with Mise

### Prerequisites

the tools needed to run this project

- Java 21
- Jruby
- Glimmer gem for Jruby
- yt-dlp

## Install Glimmer with Jruby & Mise

### Install Java

## Important! Make sure you download Java 21 rather than a newer one [Find archived Java downloads here](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html)


Insall Jruby

```sh
mise install ruby@jruby-9.4.12.0
```

Verify jruby is installed

```sh
mise exec ruby@jruby -- jruby -v
```

Install [glimmer-dsl-swt](https://github.com/AndyObtiva/glimmer-dsl-swt) gem

```sh
mise exec ruby@jruby -- jgem install glimmer-dsl-swt
```

Run glimmer-setup if your on Mac 🍎 ( otherwise skip )
```sh
mise exec ruby@jruby -- glimmer-setup
```

To use Jruby and Glimmer now you need to run it like this...

```sh
mise exec ruby@jruby -- glimmer
```
Try to scaffold your first app

```sh
mise exec ruby@jruby -- glimmer 'scaffold[helloworld]'
```

## Install YT-DLP for downloading youtube videos

### Mac

```sh
  brew install yt-dlp
```

### Linux

```sh
  sudo apt install yt-dlp
```

## Install FFMPEG for audio & video encoding

```sh
  brew install ffmpeg
```

### Linux

```sh
  sudo apt install ffmpeg
```


## Installing Producer PAL App
Now that you have Glimmer & Jruby installed you can follow these instructions for running this producer pal app


download the source code

```sh
  git clone https://github.com/indigotechtutorials/producer-pal
```

cd into app folder

```sh
  cd producer-pal
```

run the app

```sh
  mise exec ruby@jruby -- glimmer app.rb
```