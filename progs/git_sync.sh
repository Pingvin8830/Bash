#!/bin/bash
#set -x

# Синхронизатор git-репозитариев

cd /data/git

# Перебор репозитариев
for repos in `ls`; do
  cd $repos
    echo
    echo '-----------'
    echo "Repositary: $repos"

    # Контроль готовности к синхронизации
    git status
    echo -n "Синхронизируем? (y / n) "
    read doing
    sync='true'
    [ "$doing" != 'y' ] && sync='false'

    # Есть подтверждение синхронизации
    if [ "$sync" == 'true' ]; then

      # Перебор веток
      branches=`git branch | sed 's/\**[ ]*//; '`
      for branch in $branches; do
        echo
        echo "Repositary: $repos; Branch: $branch"

        # Синхронизация
        git checkout $branch
        git pull
        done

      git checkout master
    fi

  cd ..
  done

