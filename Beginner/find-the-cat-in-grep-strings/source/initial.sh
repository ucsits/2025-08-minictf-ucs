#!/bin/bash

# --- Konfigurasi ---
CHALLENGE_DIR="FindTheCat"
JOKE_FILENAMES=(
    "4c4b_bruh_m0m3nt"
    "k4p4n_p3m3r1nt4h_s4d4r.conf"
    "janji_kampanye_2024.bak"
    "revisi_uu_ite_part_2.dll"
    "netizen_maha_benar.log"
    "subsidi_dicabut_lagi.tmp"
    "cicilan_pinjol_aman.xls"
    "surat_terbuka_untuk_bpjs.txt"
)
JOKE_CONTENTS=(
    "Isi file ini hanyalah harapan palsu dan janji manis."
    "Error 404: Keadilan sosial not found."
    "Anggaran sudah cair, tapi programnya gaib seperti sinyal di pedalaman."
    "Maaf, server sedang sibuk mengurus kepentingan golongan. Silakan coba lagi setelah pemilu."
    "Menurut riset, 9 dari 10 rakyat ingin hidup tenang. Satunya lagi ingin jadi anggota dewan."
    "File ini lebih kosong dari dompet di akhir bulan."
    "Property of BuzzerRp. Do not distribute."
)

# --- Proses Pembuatan ---
echo "Membersihkan file lama..."
rm -rf "$CHALLENGE_DIR" "${CHALLENGE_DIR}.zip"

echo "Membuat direktori utama: $CHALLENGE_DIR"
mkdir "$CHALLENGE_DIR"

# Langkah 1: Membuat direktori sampah dengan struktur yang ditentukan
echo "Menyebar kekacauan digital (noise)..."
for i in {1..30}; do
    # --- Layer 1 (Folder Root) ---
    LAYER1_DIR="$CHALLENGE_DIR/dokumen_rahasia_$i"
    mkdir -p "$LAYER1_DIR"
    
    # Buat 3 file sampah di Layer 1
    for j in {1..3}; do
        RANDOM_FILENAME=${JOKE_FILENAMES[$RANDOM % ${#JOKE_FILENAMES[@]}]}
        RANDOM_CONTENT=${JOKE_CONTENTS[$RANDOM % ${#JOKE_CONTENTS[@]}]}
        echo "$RANDOM_CONTENT" > "$LAYER1_DIR/${RANDOM_FILENAME}_${j}.txt"
    done

    # --- Layer 2 (Sub-folder) ---
    LAYER2_DIR="$LAYER1_DIR/sub_folder_penting_$(($RANDOM % 100))"
    mkdir -p "$LAYER2_DIR"

    # Buat 5 file sampah di Layer 2
    for k in {1..5}; do
        RANDOM_FILENAME=${JOKE_FILENAMES[$RANDOM % ${#JOKE_FILENAMES[@]}]}
        RANDOM_CONTENT=${JOKE_CONTENTS[$RANDOM % ${#JOKE_CONTENTS[@]}]}
        echo "$RANDOM_CONTENT" > "$LAYER2_DIR/${RANDOM_FILENAME}_${k}.log"
    done

    # --- Layer 3 (Sub-sub-folder) ---
    LAYER3_DIR="$LAYER2_DIR/data_sangat_rahasia_$(($RANDOM % 100))"
    mkdir -p "$LAYER3_DIR"

    # Buat 7 file sampah di Layer 3
    for l in {1..7}; do
        RANDOM_FILENAME=${JOKE_FILENAMES[$RANDOM % ${#JOKE_FILENAMES[@]}]}
        RANDOM_CONTENT=${JOKE_CONTENTS[$RANDOM % ${#JOKE_CONTENTS[@]}]}
        echo "$RANDOM_CONTENT" > "$LAYER3_DIR/${RANDOM_FILENAME}_${l}.dat"
    done
done

# Langkah 2: Mengemas semuanya menjadi file zip
echo "Mengemas kerangka challenge ke dalam file zip..."
zip -r "${CHALLENGE_DIR}.zip" "$CHALLENGE_DIR"

echo "Selesai! Kerangka challenge '${CHALLENGE_DIR}.zip' sudah siap."
echo "Sekarang Anda bisa unzip, tambahkan file petunjuk manual, lalu zip kembali."

