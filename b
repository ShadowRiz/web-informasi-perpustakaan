// script.js
function filterBuku() {
    // 1. Ambil nilai input dari search bar
    let input = document.getElementById('searchInput');
    let filter = input.value.toUpperCase();

    // 2. Ambil semua kartu buku
    let container = document.getElementById('daftarBuku');
    let cards = container.getElementsByClassName('kartu-buku');

    // 3. Loop melalui semua kartu dan sembunyikan yang tidak cocok
    for (let i = 0; i < cards.length; i++) {
        let title = cards[i].getElementsByTagName("h3")[0];
        let author = cards[i].getElementsByClassName("penulis")[0];
        
        // Cek teks judul atau penulis
        let txtTitle = title.textContent || title.innerText;
        let txtAuthor = author.textContent || author.innerText;

        if (txtTitle.toUpperCase().indexOf(filter) > -1 || txtAuthor.toUpperCase().indexOf(filter) > -1) {
            cards[i].style.display = ""; // Tampilkan
        } else {
            cards[i].style.display = "none"; // Sembunyikan
        }
    }
}

// script.js

// Fungsi untuk membuka modal dan mengisi datanya
function bukaModal(judul, penulis, tahun, kategori, gambar, sinopsis) {
    // 1. Ambil elemen modal
    let modal = document.getElementById("modalBuku");
    
    // 2. Isi data ke dalam elemen HTML di modal
    document.getElementById("modalJudul").innerText = judul;
    document.getElementById("modalPenulis").innerText = penulis;
    document.getElementById("modalTahun").innerText = tahun;
    document.getElementById("modalKategori").innerText = kategori;
    document.getElementById("modalGambar").src = gambar;
    document.getElementById("modalSinopsis").innerText = sinopsis;

    // 3. Tampilkan modal
    modal.style.display = "block";
}

// Fungsi untuk menutup modal
function tutupModal() {
    let modal = document.getElementById("modalBuku");
    modal.style.display = "none";
}

// Tutup modal jika user klik di luar area kotak putih (background gelap)
window.onclick = function(event) {
    let modal = document.getElementById("modalBuku");
    if (event.target == modal) {
        modal.style.display = "none";
    }
}