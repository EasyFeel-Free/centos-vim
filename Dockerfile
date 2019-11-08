FROM hychyc/centos-ssh

LABEL maintainer="hayicle.vn@gmail.com"
LABEL version="1.0"
LABEL description="vim IDE"

USER root

RUN yum install -y neovim python3-neovim git && \
    mkdir -p /root/.config/nvim/ && \
    curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

ADD conf/init.vim /root/.config/nvim/init.vim

#Install Pluging
RUN nvim +'PlugInstall' +'q!' +'q!' && \
    echo "alias vim='nvim'" >> /root/.bashrc

