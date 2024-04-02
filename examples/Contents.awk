# Designed to be run with output from
# `https://repo.ialab.dsu.edu/debian/dists/stable/main/Contents-all.gz`
# Produces a CSV

BEGIN {
    FS = " ";
    RS = "\n";
    OFS = ",";
    ORS = "\n";
}

$1 ~ /^usr\/share\/man\/man[0-9]+\// {
    split($2, arr, ",");
    split(arr[1], arr2, "/");
    print($1, arr2[2]);
}