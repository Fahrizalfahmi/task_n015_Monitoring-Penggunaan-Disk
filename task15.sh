#!/bin/bash

disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

disk_threshold=80

# jika penggunaan disk melebihi threshold
if [ "$disk_usage" -gt "$disk_threshold" ]; then
    # Kirim notifikasi melalui email
    echo "Penggunaan disk melampaui batas threshold. Penggunaan saat ini: $disk_usage%" | mail -s "Disk Usage Alert" your_email@example.com
fi
