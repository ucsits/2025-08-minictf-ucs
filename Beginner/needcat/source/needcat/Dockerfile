FROM python:slim AS app

FROM pwn.red/jail
COPY --from=app / /srv

WORKDIR /srv/app

COPY src/ .

RUN mv app.py run
RUN chmod +x run

ENV JAIL_POW=1
ENV JAIL_TIME=0