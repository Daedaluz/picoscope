FROM debian:buster

RUN apt update && apt -y install wget curl gnupg mono-complete gtk-sharp2 udev && \
    echo "deb https://labs.picotech.com/debian/ picoscope main" >/etc/apt/sources.list.d/picoscope.list && \
    curl -s -q  https://labs.picotech.com/debian/dists/picoscope/Release.gpg.key | apt-key add - && \
    apt update && \
    mv /sbin/udevadm /sbin/udevadm.bin && echo '#!/bin/bash' > /sbin/udevadm && chmod a+x /sbin/udevadm && \
    apt -y install picoscope

CMD ["picoscope"]
