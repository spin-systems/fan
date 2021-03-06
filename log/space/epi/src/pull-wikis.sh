readarray repos < repo-list.txt
for pair in "${repos[@]}"
do
  remoterepo="$(echo $pair | cut -d\: -f 1)"
  shortname="$(echo $pair | cut -d\: -f 2)"
  if [ ! -d ../$shortname ]; then
    git clone git@github.com:spin-log/$remoterepo.wiki.git ../$shortname
  else
    echo "Pulling $shortname since local repo already exists"
    git -C ../$shortname pull
  fi
done
