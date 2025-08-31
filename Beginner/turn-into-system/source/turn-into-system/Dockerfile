FROM alpine

RUN apk add --no-cache openssh bash sudo
RUN ssh-keygen -A
RUN adduser -D -s /bin/bash ucs && \
    echo "ucs:UCSITS2025!!!" | chpasswd && \
    adduser ucs wheel

COPY src/flag.txt /flag.txt
RUN chmod 744 /flag.txt
RUN mv /flag.txt `head -c 16 /dev/random | xxd -p`_flag.txt

RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo "PermitRootLogin no" >> /etc/ssh/sshd_config && \
    echo "AllowUsers ucs" >> /etc/ssh/sshd_config

COPY /src/banner.txt /etc/motd

RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config || true && \
    sed -i 's/#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config || true && \
    echo "AllowUsers ucs" >> /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]