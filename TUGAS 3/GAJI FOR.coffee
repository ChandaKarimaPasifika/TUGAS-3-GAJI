data_karyawan = [
    {"status": "Pegawai Tetap", "golongan": "A"},
    {"status": "Pegawai Tetap", "golongan": "B"},
    {"status": "Pegawai Tetap", "golongan": "C"},
    {"status": "Honor", "golongan": "A"},
    {"status": "Honor", "golongan": "B"},
    {"status": "Honor", "golongan": "C"},
]

for karyawan in data_karyawan:
    status = karyawan["status"]
    golongan = karyawan["golongan"]

    if status == "Pegawai Tetap":
        gaji_pokok = 1000000
        bonus = {"A": 200000, "B": 400000, "C": 550000}[golongan]
    else:  # Honor
        gaji_pokok = 750000
        bonus = {"A": 150000, "B": 275000, "C": 480000}[golongan]

    total_gaji = gaji_pokok + bonus

    # Tampilkan status hanya jika berganti (Pegawai Tetap → Honor)
    if karyawan != data_karyawan[0] and karyawan["status"] != data_karyawan[data_karyawan.index(karyawan) - 1]["status"]:
        print(f"\nStatus: {status}")
    elif karyawan == data_karyawan[0]:  # Untuk yang pertama langsung tampilkan status
        print(f"Status: {status}")

    # Output sesuai format yang diminta
    print(f"Golongan: {golongan}")
    print(f"Gaji Pokok: {gaji_pokok}")
    print(f"Bonus: {bonus}")
    print(f"Total Gaji: {total_gaji}\n")
