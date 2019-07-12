# whois-docker

WHOIS command-line tool inside a distroless image.

## Running

```bash
docker run --rm -it lestienne/whois:latest cira.ca
```

Or create an alias:
```bash
echo `alias whois="docker run --rm -it lestienne/whois:latest" | sudo tee -a ~/.bashrc`
source ~/.bashrc
whois cira.ca
```

## Versions

- `lestienne/whois:5.4.2`, `lestienne/whois:latest`
- `lestienne/whois:5.2.17`