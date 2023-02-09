#!/bin/bash

name=$1
git init ~/workspace/${name}
mkdir ~/workspace/${name}/scripts
mkdir -p ~/workspace/${name}/projects/pdfs
#mkdir ~/worksapce/${name}/projects/pdfs
#cat  ~/workspace/template/scripts/compile_doc.sh | sed -e "s/academic/${name}/g" > ~/workspace/${name}/compile_doc.sh 

for filename in compile_doc.sh  download_arxiv.sh  open_pdf.sh; do
  cat  ~/workspace/template/scripts/${filename} | sed -e "s/academic/${name}/g" > ~/workspace/${name}/scripts/${filename} 
done

cp ~/workspace/template/vim/.lvimrc ~/workspace/${name}/.lvimrc 
