library(wdpar)

# Download national exemple
wdpa_lie <- wdpa_fetch("LIE", download_dir = ".")

# Try download global
wdpa <- wdpa_fetch("global", download_dir = ".")


wdpa <- wdpa_read("WDPA_Feb2023_Public.gdb")

dir.create("temp")
utils::unzip("WDPA_Feb2023_Public.gdb.zip", exdir = "temp")


wdpa <- wdpa_read("WDPA/WDPA_Feb2023_Public.gdb.zip")
wdpa <- st_read("WDPA/WDPA_Feb2023_Public.gdb.zip",
                layer = "WDPA_WDOECM_poly_Feb2023")

wdpa2 <- st_read("WDPA_Feb2023_Public.gdb.zip",
                layer = "WDPA_WDOECM_poly_Feb2023")

colnames(wdpa)

colnames(wdpa)[!colnames(wdpa) %in% colnames(wdpa_lie)]
colnames(wdpa_lie)[!colnames(wdpa_lie) %in% colnames(wdpa)]

wdpa <- wdpa_read("WDPA/WDPA_Feb2023_Public.gdb.zip")

list.files("WDPA")
st_read
