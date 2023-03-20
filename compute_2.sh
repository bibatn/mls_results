. /home/m/projects_/normalize/env/bin/activate
project_dir=$(pwd)
cd mls_result_copy
echo average_deviation average_square_deviation max_deviation min_deviation >> result_mls
for file in *.txt
do
  echo $file >> result_mls
  python3 /home/m/projects_/normalize/metrics.py $file >> result_mls
done
