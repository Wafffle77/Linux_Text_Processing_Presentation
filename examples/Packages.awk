# Designed to be run with output from
# `https://repo.ialab.dsu.edu/debian/dists/stable/main/binary-all/Packages.gz`
# Produces a CSV

BEGIN {
    RS = "\n";
    FS = " *: *";
    ORS = "\n";
    OFS = ",";
}

NF == 0 {
    print(cur["Package"], cur["Filename"], cur["Size"]);
    split("", cur);
}

NF == 2 {
    cur[$1] = $2;
}