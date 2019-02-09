FROM ubuntu:18.04

RUN apt-get update
# optionally support sshing into multiple systems at once
RUN  apt install -y tmux

# optionally support remote mounts
RUN apt install -y sshfs
RUN useradd -ms /bin/bash bridgy
RUN apt-get install -y python-pip

USER bridgy
RUN pip install --user bridgy

ENV PATH="$HOME/.local/bin:$PATH"

ENTRYPOINT PATH=$HOME/.local/bin:$PATH bridgy
CMD [ "-help" ]
