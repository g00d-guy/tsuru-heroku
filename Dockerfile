from    bonustab/buildstep
run     wget http://github.com/g00d-guy/basebuilder/tarball/master -O basebuilder.tar.gz --no-check-certificate
run     mkdir /var/lib/tsuru
run     tar -xvf basebuilder.tar.gz -C /var/lib/tsuru --strip 1
run     rm /basebuilder.tar.gz
add     deploy /var/lib/tsuru/deploy
run     chmod +x /var/lib/tsuru/deploy
run     cp /var/lib/tsuru/base/restart /var/lib/tsuru
run     cp /var/lib/tsuru/base/start /var/lib/tsuru
run     chmod +x /var/lib/tsuru/start
run     /var/lib/tsuru/base/install
run     /var/lib/tsuru/base/setup
#run	pip install tsuru-circus
add     circus.ini /etc/circus/circus.ini
