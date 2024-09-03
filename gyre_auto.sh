for nurot in 4.5 4.7 4.9 5.1 5.5 5.7 5.9 6.1 6.3 6.5;
do
cd /Users/n-wang/Desktop/mesa-r24.03.1/star/11_75rot/KIC7760680_525001_1 
mkdir "${nurot}_uhz"
cp "gyre.in" "${nurot}_uhz"
cp "spb.mesa" "${nurot}_uhz"
cd ${nurot}_uhz
sed -i '' -e "s/Omega_rot =/Omega_rot = $nurot ! /" gyre.in
$GYRE_DIR/bin/gyre gyre.in
echo "$nurot"
done
