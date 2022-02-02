FROM python:3.8-alpine
WORKDIR /szkolenie
RUN apk add --no-cache mpc1-dev mpfr-dev libressl-dev musl-dev libc-dev libffi-dev gmp-dev gcc git wget john
RUN pip install --no-cache-dir git-dumper gmpy2 termcolor cprint pycryptodomex requests asn1tools bitstruct cffi cryptography diskcache prompt-toolkit pycparser pycrypto pyparsing six wcwidth
COPY . .
RUN ln -s /szkolenie/tools/jwt_tool/jwt_tool.py /usr/local/bin/jwt_tool && ln -s /szkolenie/tools/rsa_sign2n/jwt_forgery.py /usr/local/bin/jwt_forgery
CMD ["/bin/sh"]