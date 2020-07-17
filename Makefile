SHELL = /bin/bash

DATE := $(shell date --rfc-3339=seconds)

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

publish: build
> cd public && \
>   git add . && \
>   git commit -m "chore(update) $(DATE)" && \
>   git push
