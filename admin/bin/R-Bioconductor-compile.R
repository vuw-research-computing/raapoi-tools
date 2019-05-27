# Global option to not test before loading.  We might get a few broken pkgs but
# we also get some packages that build OK but for some reason fail a test.  We
# can look into these if users complain.

options(INSTALL_opts = "--no-test-load")
options(download.file.method = "wget")

args = commandArgs()
base = "/home/software/apps/local/lib/Bioconductor/"

options(repos = "http://cran.stat.auckland.ac.nz")
#Add biocLite packages and other tools
plib = paste(base, "3.9", sep = "")
install.packages(BiocManager, lib = plib)
.libPaths(plib)
pkglist <- scan("/home/software/vuwrc/admin/bin/R-biocLite.pkgs", sep = "", what = "", multi.line = FALSE)
BiocManager::install(pkglist, type = "source", lib = plib)

# Save any warnings
cat(file = "warnings.rinstall")
warnings(file = "warnings.rinstall", append = TRUE)

q()
