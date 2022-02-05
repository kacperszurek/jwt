# Bezpieczeństwo tokenów JWT

Obraz dockera zawiera poniższe narzędzia:
* [git-dumper](https://github.com/arthaud/git-dumper) - zmodyfikowana aby działała z katalogiem `git` a nie `.git`
* [jwt_tool](https://github.com/ticarpi/jwt_tool) - zmodyfikowana aby otwierała pliki z kluczem w trybie binarnym
* [jwt_forgery](https://github.com/silentsignal/rsa_sign2n)
* [john](https://www.openwall.com/john/)

Użycie:

```
docker pull ghcr.io/kacperszurek/jwt:latest
docker run -it ghcr.io/kacperszurek/jwt:latest
```
