# Base layer of image, ubuntu will default to latest
FROM ubuntu

# Add dependencies to image
RUN sudo apt-get -qq update && install -y \
    python3.7 \
    graphviz \
    pandoc \
    texlive-base \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra

RUN pip install pipenv --upgrade-strategy=only-if-needed
RUN pipenv install --dev

# Copy entrypoint.sh from source in repo on path
COPY entrypoint.sh /entrypoint.sh

# Configure the container as executable
ENTRYPOINT ["entrypoint.sh"]
