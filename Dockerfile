FROM python:3.9

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . /src

EXPOSE 6060

WORKDIR src

CMD ["python", "-u", "manage.py", "makemigrations"]
CMD ["python", "-u","manage.py", "migrate"]
CMD ["python", "-u","manage.py", "runserver", "0.0.0.0:6060", "--noreload"]