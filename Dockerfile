FROM klakegg/hugo:0.55.6-ubuntu

RUN apt-get update && apt-get install -y \
    git \
    ruby-full \
    && rm -rf /var/lib/apt/lists/*

RUN gem install asciidoctor && \
    gem install asciidoctor-diagram && \
    gem install asciidoctor-html5s && \
    gem install rouge
 
COPY ./asciidoctor /usr/local/sbin

RUN chmod +x /usr/local/sbin/asciidoctor