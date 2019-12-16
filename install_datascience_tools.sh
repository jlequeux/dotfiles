sudo apt-get update
sudo apt-get install Python3-pip -y

mkdir -p /home/jeremie/code/
git clone git@github.com:froglabs/projects.git /home/jeremie/code/

pip3 install froglabs
pip3 install jupyter
pip3 install flake8
pip3 install -r /home/jeremie/code/projects/toolkit/requirements.txt
