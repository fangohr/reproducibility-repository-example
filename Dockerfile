# Minimal Docker container example
FROM debian:11

# # Avoid asking for geographic data when installing tzdata.
# ENV DEBIAN_FRONTEND noninteractive

# work in directory of our choice (abbreviation of InputOutput)
WORKDIR /home/covid19

# put relevant files into container
COPY requirements.txt figure1.ipynb time_series_covid19_deaths_global.csv .

# install software
RUN apt-get -y update
RUN apt-get install -y python3 python3-pip
RUN python3 --version
RUN python3 -m pip install -r requirements.txt
RUN python3 -m pip install notebook==7.0.2

# recreate figure1.pdf
RUN jupyter-nbconvert --to html --execute figure1.ipynb
