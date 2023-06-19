function beGoodCitizen(){
    let ans = confirm("Apakah Anda ingin belajar menjadi warga yang baik?");

    if (ans) {
        alert(
            "Warga negara yang baik adalah orang yang taat hukum," +
            "menghormati hak dan kewajiban sesama warga negara," +
            "serta berkontribusi positif bagi kemajuan bangsa dan negara." +
            "Warga negara yang baik juga menjaga persatuan dan kesatuan negara,"+
            "menghargai keberagaman budaya dan agama," +
            "serta menjunjung tinggi nilai-nilai ideologi bangsa."
        );
        alert(
            "Ada beberapa hal yang dapat menjadikan Anda warga negara yang baik di negara ini"
        );
        alert(
            "1. Laporkan segala tindakan kejahatan! \n Tindak kejahatan berbahaya bagi negara, negara dapat maju jika tanpa kejahatan"
        );
        alert("2. Dukung program pemerintah");
        alert("3. Jangan pesimis terhadap negara");
        alert("Selamat Anda mendapatkan 50 Social Credit Points");
    }else{
        alert("-50 Social Credit Points");
    }
}