FROM python:slim
ENV PYTHONUNBUFFERED 1
RUN pip install poetry

RUN mkdir /code
WORKDIR /code

COPY pyproject.toml /code
COPY poetry.lock /code
RUN poetry install

ADD frontend /code/frontend/
ADD myapp /code/myapp/
COPY manage.py /code/
ADD docker/entrypoint.sh /code

#ENTRYPOINT ["/bin/bash"]
CMD ["bash", "entrypoint.sh"]