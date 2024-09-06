# domain-list-ru_direct

A basic, simplified list of Russian domains intended for use in V2Ray client config.json (direct routing rule).

Based on the domain-list-community project.

Usage example in the client config.json:
```
  "routing": {
      "domainStrategy": "IPOnDemand",
          "rules": [
              {
                  "domainMatcher": "hybrid",
                  "type": "field",
                  "domain": [  // domains to go direct
                      "ext:direct.dat:cyrillic",
                      "ext:direct.dat:gosuslugi",
                      "ext:direct.dat:misc",
                      "ext:direct.dat:ru",
                      "ext:direct.dat:ruext",
                      "ext:direct.dat:rugeo",
                      "ext:direct.dat:vk",
                      "ext:direct.dat:yandex"
                    ],
              "outboundTag": "direct"
          }
      ]
  }
```

Compilation:
```
  git clone https://github.com/zimbabwe303/domain-list-ru_direct.git
  cd domain-list-ru_direct
  go build
  ./domain-list-direct
```
