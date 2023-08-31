FROM python:slim-bullseye

# Avoid exec as root
RUN  useradd -ms  /bin/bash python
USER python

# Source
COPY . /python
WORKDIR /python

# Requirements/config
RUN pip install --no-cache-dir -r requirements.txt

# Init
RUN echo "### Python init ###"
# TODO run python framework
# ? CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]