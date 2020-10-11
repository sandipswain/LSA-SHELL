firArr=(10 20 30 40 50 60)
secArr=('python' 'c' 'java' 'bash' 'html' 'flask' 'django')
merArr=("${firArr[@]}" "${secArr[@]}")
echo ${merArr[@]}