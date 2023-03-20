. /home/m/projects_/normalize/env/bin/activate
project_dir=$(pwd)
# cd noized
# echo $project_dir/mls_result/bunny01*
echo average_deviation average_square_deviation max_deviation min_deviation >> results1.txt
for file in *.pcd
do
  for mls_file in noized/${file:0:${#file}-4}*
  do
    echo $file $mls_file >> results1.txt
    python3 /home/m/projects_/normalize/std.py $file $mls_file >> results1.txt
  done
done
