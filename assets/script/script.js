function filterBuku() {
    let input = document.getElementById('searchInput');
    let filter = input.value.toUpperCase();
    let container = document.getElementById('daftarBuku');
    let cards = container.getElementsByClassName('kartu-buku');
    
    for (let i = 0; i < cards.length; i++) {
        let title = cards[i].getElementsByTagName("h3")[0];
        let author = cards[i].getElementsByClassName("penulis")[0];
        let txtTitle = title.textContent || title.innerText;
        let txtAuthor = author.textContent || author.innerText;

        if (txtTitle.toUpperCase().indexOf(filter) > -1 || txtAuthor.toUpperCase().indexOf(filter) > -1) {
            cards[i].style.display = "";
        } else {
            cards[i].style.display = "none";
        }
    }
}

function bukaModal(judul, penulis, tahun, kategori, gambar, sinopsis) {
    let modal = document.getElementById("modalBuku");
    document.getElementById("modalJudul").innerText = judul;
    document.getElementById("modalPenulis").innerText = penulis;
    document.getElementById("modalTahun").innerText = tahun;
    document.getElementById("modalKategori").innerText = kategori;
    document.getElementById("modalGambar").src = gambar;
    document.getElementById("modalSinopsis").innerText = sinopsis;
    modal.style.display = "block";
}

function tutupModal() {
    let modal = document.getElementById("modalBuku");
    modal.style.display = "none";
}

window.onclick = function(event) {
    let modal = document.getElementById("modalBuku");
    if (event.target == modal) {
        modal.style.display = "none";
    }
}