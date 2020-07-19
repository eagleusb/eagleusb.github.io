---
title: "golang is superior"
date: "2020-07-19"
author: "eagleusb"
cover: "hello.jpg"
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
showFullContent: false
---

# golang

```makefile
SHELL = /bin/bash

.PHONY = environment serve lint build test
.RECIPEPREFIX = >

environment:
> @echo -e "\nhugo environment:\n"
> @hugo env
```

{{<
    code language="go" title="golang is superior" id="1"
    expand="plus..." collapse="reduire" isCollapsed="false"
>}}
package main

import log

func main() {
log.Print("Hello World")
}
{{< /code >}}
