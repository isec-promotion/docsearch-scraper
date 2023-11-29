FROM algolia/docsearch-scraper-base
LABEL maintainer="docsearch@algolia.com"

WORKDIR /root
COPY scraper/src ./src

RUN pip install requests

ENTRYPOINT ["pipenv", "run", "python", "-m", "src.index"]
