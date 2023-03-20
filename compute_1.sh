. /home/m/projects_/normalize/env/bin/activate
project_dir=$(pwd)
cd noized
echo average_deviation average_square_deviation max_deviation min_deviation >> result_noize
for file in *.txt
do
  echo $file >> result_noize
  python3 /home/m/projects_/normalize/metrics.py $file >> result_noize
done
