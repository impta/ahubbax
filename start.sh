echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/impta/abubbax /ahubbaxx
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/subinps/ahubbax -b $BRANCH /ahubbaxx
fi
cd /ahubbaxx
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
