readarray repos < repo-list.txt
for pair in "${repos[@]}"
do
  remoterepo="$(echo $pair | cut -d\: -f 1)"
  shortname="$(echo $pair | cut -d\: -f 2)"
  git clone git@github.com:spin-log/$remoterepo.wiki.git ../$shortname
done
