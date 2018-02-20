readarray repos < repo-list.txt
for pair in "${repos[@]}"
do
  remoterepo="$(echo $pair | cut -d\: -f 1)"
  shortname="$(echo $pair | cut -d\: -f 2)"
  if [ ! -d ../w/$shortname ]; then
    git clone git@github.com:qu-reeds/$remoterepo.wiki.git ../w/$shortname
  else
    echo "Pulling $shortname since local repo already exists"
    git -C ../w/$shortname pull
  fi
done
