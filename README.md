# domain-list-ru_direct

A basic, simplified list of Russian domains intended for use in V2Ray client config.json (direct routing rule).

Example:
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
