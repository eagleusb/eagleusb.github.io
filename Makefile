SHELL = /bin/bash

.PHONY = environment serve lint build test
.RECIPEPREFIX = >

environment:
> @echo -e "\nhugo environment:\n"
> @hugo env

serve:
> hugo server \
>   --baseURL http://localhost \
>   --noHTTPCache --print-mem --templateMetrics --templateMetricsHints

build:
> hugo --enableGitInfo --minify
