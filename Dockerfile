FROM klakegg/hugo:0.55.6-ext-ubuntu

RUN apt-get update && apt-get install -y \
    git \
    ruby-full \
    silversearcher-ag \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN gem install asciidoctor:2.0.1 \
    asciidoctor-diagram:1.5.18 \  
    rouge:3.6.0 
 # <1>

COPY ./asciidoctor /usr/local/sbin

RUN chmod +x /usr/local/sbin/asciidoctor