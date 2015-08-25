FROM      ubuntu:15.04

RUN       mkdir /downloads                                                                                               && \
          cd /downloads                                                                                                  && \
                                                                                                                         && \
          curl -L http://download.virtualbox.org/virtualbox/5.0.2/virtualbox-5.0_5.0.2-102096~Ubuntu~trusty_amd64.deb -O && \
          mv virtualbox-5.0_5.0.2-102096~Ubuntu~trusty_amd64.deb $vbox_pathfi /downloads/virtualbox.deb                  && \
                                                                                                                         && \
          curl -L https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb -O                                   && \
          mv vagrant_1.7.4_x86_64.deb $vbox_pathfi /downloads/vagrant.deb                                                && \
                                                                                                                         && \
          apt-get update                                            && \
          apt-get install dkms -y                                   && \
          echo y | apt-get install linux-image-3.19.0-26-generic -y && \
          apt-get install -y libssl1.0.0                            && \
          apt-get install -y libvpx1                                && \
          apt-get install -y libsdl1.2debian                        && \
          apt-get install -y libqtgui4                              && \
          apt-get install -y libqtcore4                             && \
          apt-get install -y libqt4-opengl                          && \
          apt-get install -y libqt4-network                         && \
          apt-get install -y libpython2.7                           && \
          apt-get install -y libgl1                                 && \
          apt-get install -y libgl1-mesa-glx                        && \
          apt-get install -y libcurl3                               && \
          apt-get install -y libxcursor1                            && \
          apt-get install -y libxinerama1                           && \
          apt-get install -y libxmu6                                && \
          apt-get install -y psmisc                                 && \
          dpkg -i /downloads/virtualbox.deb                         && \
          /etc/init.d/vboxdrv setup                                 && \
                                                                    && \
          dpkg -i /downloads/vagrant.deb                            && \
                                                                    && \
          apt-get install -y git                                    && \
                                                                    && \
          apt-get autoremove                                        && \
                                                                    && \
          rm -rf /downloads
