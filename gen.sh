#!/bin/bash

name=$1
git clone ~/workspace/template/ ~/workspace/${name}
cd ~/workspace/${name}
echo "*.sh" > ~/workspace/${name}/.gitignore

sed -i -e "s/academic/${name}/g"  ~/workspace/${name}/aliasf.sh
git add ~/workspace/${name}/aliasf.sh

for filename in compile_doc.sh  download_arxiv.sh  open_pdf.sh; do
  rm ~/workspace/${name}/scripts/${filename} 
  cat  ~/workspace/template/scripts/${filename} | sed -e "s/academic/${name}/g" > ~/workspace/${name}/scripts/${filename} 
git add ~/workspace/${name}/scripts/${filename} 
done

git commit -m "setting" 
# cp ~/workspace/template/tex/* ~/workspace/${name}/tex/
# cp ~/workspace/template/vim/.lvimrc ~/workspace/${name}/.lvimrc 
