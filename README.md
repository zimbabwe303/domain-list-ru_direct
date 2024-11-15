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

*Note: the latest versions of sing-box now recommend using their own `.srs` [binary rule-set format](https://sing-box.sagernet.org/configuration/rule-set/source-format/).*

## Releases

[Releases](https://github.com/zimbabwe303/domain-list-ru_direct/releases) include all the files already compiled (the executables are for Linux amd64).
