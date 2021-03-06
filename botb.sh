# a million commits
for Y in {2020..2020}
do
  mkdir $Y
  cd $Y
  for M in {03..03}
  do
    mkdir $M
    cd $M
    for D in {02, 03, 04, 05, 06, 09, 16, 11, 18, 13, 20, 30, 31}
    do
      mkdir $D
      cd $D
      for i in {01..04}
      do
        echo "$i on $M/$D/$Y" > commit.md
        export GIT_COMMITTER_DATE="$Y-$M-$D 12:$i:00"
        export GIT_AUTHOR_DATE="$Y-$M-$D 12:$i:00"
        git add commit.md -f
        git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on KEVIN"        
      done
      cd ../
    done
    cd ../
  done
  cd ../
done
git push origin main
git rm -rf 20**
git rm -rf 19**
git commit -am "cleanup"
git push origin main
