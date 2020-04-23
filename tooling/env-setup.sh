export PERL_MM_USE_DEFAULT=1
sudo apt-get update -y
#sudo apt-get install build-essential -y
#sudo cpan REST::Client
#sudo cpan JSON
sudo apt-get install cpanminus -y
sudo apt-get install zlib1g-dev -y
sudo cpanm REST::Client
sudo cpanm JSON
sudo cpanm Inline::C