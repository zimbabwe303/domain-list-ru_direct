# domain-list-ru_direct

A basic, simplified list of Russian domains intended for use in XTLS/Xray/V2Ray client config.json (direct routing rule).

Based on the domain-list-community project.

## Usage example (client config.json)

```
  "routing": {
      "domainStrategy": "IPOnDemand",
          "rules": [
              {
                  "domainMatcher": "hybrid",
                  "type": "field",
                  "domain": [  // domains to go direct
                      "ext:direct.dat:all"
                    ],
              "outboundTag": "direct"
          }
      ]
  }
```

## Compilation

```
  git clone https://github.com/zimbabwe303/domain-list-ru_direct.git
  cd domain-list-ru_direct
  go build
  ./domain-list-direct
```

## Sing-Box

[Sing-Box](https://github.com/SagerNet/sing-box)/[NekoRay](https://github.com/MatsuriDayo/nekoray)/[NekoBox](https://github.com/MatsuriDayo/NekoBoxForAndroid) (and possibly also [Clash.Meta](https://github.com/djoeni/Clash.Meta)) do not support .dat files directly, you have to convert it to MMDB (.db) using this tool: https://github.com/MetaCubeX/geo.git

Command line: `geo convert site -i v2ray -o sing direct.dat`

Rename the resulting file to `geosite.db`, put it into the sing-box/nekoray executable directory and add the rules (e.g. geosite:all).

The latest versions of sing-box now recommend using their own `.srs` [binary rule-set format](https://sing-box.sagernet.org/configuration/rule-set/source-format/) which is compiled from the human-readable .json. To convert .db to .json use the following commands:

```
sing-box geosite export <category>
sing-box geoip export <category>
```

Then you can convert .json to .srs (you can use .json directly but it is much slower than .srs):

`sing-box rule-set compile <file.json>`

## Pre-compiled files

Pre-compiled files (including the [v2fly](https://github.com/v2fly/geoip) geoip.dat) can be found in the "[compiled](https://github.com/zimbabwe303/domain-list-ru_direct/compiled)" directory. Pre-compiled files for sing-box are in the "[compiled/sing-box](https://github.com/zimbabwe303/domain-list-ru_direct/compiled/sing-box)" directory.

