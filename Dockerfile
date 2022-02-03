FROM python:3.8-alpine
WORKDIR /szkolenie
RUN apk add --no-cache mpc1-dev mpfr-dev libressl-dev musl-dev libc-dev libffi-dev gmp-dev gcc git wget john
RUN pip install --no-cache-dir PySocks beautifulsoup4 dulwich==0.20.20 gmpy2 termcolor cprint pycryptodomex requests asn1tools bitstruct cffi cryptography diskcache prompt-toolkit pycparser pycrypto pyparsing six wcwidth
COPY . .
RUN chmod +x /szkolenie/tools/jwt_tool/jwt_tool.py && chmod +x /szkolenie/tools/rsa_sign2n/jwt_forgery.py && chmod +x /szkolenie/tools/git_dumper/git_dumper.py && ln -s /szkolenie/tools/jwt_tool/jwt_tool.py /usr/local/bin/jwt_tool && ln -s /szkolenie/tools/rsa_sign2n/jwt_forgery.py /usr/local/bin/jwt_forgery && ln -s /szkolenie/tools/git_dumper/git_dumper.py /usr/local/bin/git_dumper
CMD ["/bin/sh"]
