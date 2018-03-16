# test = readLines("boydswashingtong1864.txt", encoding = "UTF-8")
install.packages("pdftools")
install.packages("xlsx")
library(pdftools)
library(xlsx)
#Way1----------------------------------------------------
setwd("C:/Users/sean/Documents/GitHub/Migration-of-DC-Doctors")
dir =scan("boydswashington1893.txt", character(0), sep = "\n", encoding = "UTF-8") # separate each line
speci <- grepl("physician", dir)  # Search for the line that contains "physician"
physician =dir[speci]       # Stort the line found from speci

write.xlsx(x = physician, file = "washington1898.xlsx",
           sheetName = "TestSheet", row.names = FALSE)

# write(physician, file="physicians1864.txt")
txt <- pdf_text("washington1898.pdf", sep = "\n")


# File name
filename = "dc_1898.pdf"

# Read the PDF file
doc <- readPDF(control = list(text = "-layout"))(elem = list(uri = filename),
                                                 language = "en",
                                                 id = "id1")




install.packages("tm") # only need to do once
library(tm)
files <- list.files(pattern = "pdf$")

Rpdf <- readPDF(control = list(text = "layout"))
opinions <- Corpus(URISource(files), 
                   readerControl = list(reader = Rpdf))

# here is a pdf for mining
url <- "http://www.noisyroom.net/blog/RomneySpeech072912.pdf"
dest <- tempfile(fileext = ".pdf")
download.file(url, dest, mode = "wb")

# set path to pdftotxt.exe and convert pdf to text
exe <- "C:\\Program Files\\xpdfbin-win-3.03\\bin32\\pdftotext.exe"
system(paste("\"", exe, "\" \"", dest, "\"", sep = ""), wait = F)

# get txt-file name and open it  
filetxt <- sub(".pdf", ".txt", dest)
shell.exec(filetxt)




#Way2----------------------------------------------------
a = readLines("boydswashington1893.txt", encoding = "UTF-8")
I <- grepl("physician", a)
(dat <- a[I])
write(dat, file="physicians1893.txt")
