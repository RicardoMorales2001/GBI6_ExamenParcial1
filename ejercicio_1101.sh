# 1. Dirigirse al directorio CSB/unix/sandbox
cd /c/Users/RICARDO/Documents/CSB/CSB/unix/sandbox
# 2. ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
ls -lh ../data/Marra2014_data.fasta
# 3. Cree una copia de Marra2014_data.fasta en sandbox y asígnele el nombre my_file.fasta.
cp ../data/Marra2014_data.fasta my_file.fasta
# 4. ¿Cuántos contigs se clasifican como isogrupo00036?
grep isogroup00036 my_file.fasta | wc -l
# 5. Reemplace el delimitador original de "dos espacios" con una coma.
 cat my_file.fasta | tr -s ' ' ',' | head -n 3
# 6. ¿Cuántos isogrupos únicos hay en el archivo?
grep ">" my_file.fasta | tr -s ' ' ',' | cut -d ',' -f 4 | uniq | wc -l
# 7. Contig con mayor nùmero de lecturas.
echo "Contig con mayor número de lecturas y sus lecturas:";
grep ">" my_file.fasta | tr -s ' ' ',' | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
