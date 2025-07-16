FROM python:3.9-alpine3.13
LABEL maintainer="londonappdeveloper.com"

<<<<<<< HEAD
ENV PATH="/py/bin:$PATH"

COPY ./requirement.txt /tmp/requirement.txt
=======
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
>>>>>>> 4573af660b6a6dbb9fbdd0aba4ff87cf77d06b3a
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
<<<<<<< HEAD
    /py/bin/pip install -r /tmp/requirement.txt && \
    if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user
        
ENV PATH="/py/bin:$PATH"

USER django-user
=======
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ "$DEV" = "true" ]; then \
        /py/bin/pip install -r /tmp/requirements.dev.txt; \
    fi && \
    rm -rf /tmp/ && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user 
        
ENV PATH="/py/bin:$PATH"

USER django-user

>>>>>>> 4573af660b6a6dbb9fbdd0aba4ff87cf77d06b3a
