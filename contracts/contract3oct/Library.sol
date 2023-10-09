// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract Perpustakaan {
    struct Buku {
        uint256 ISBN;
        string judul;
        uint256 tahunDibuat;
        string penulis;
    }

    // Mapping untuk menyimpan data buku berdasarkan ISBN
    mapping(uint256 => Buku) public bukuMapping;

    // Variabel untuk menyimpan data admin
    address public admin;

    constructor() {
        admin = msg.sender; // Admin adalah pemilik kontrak
    }

    // Modifikator yang memeriksa apakah pemanggil adalah admin
    modifier hanyaAdmin() {
        require(msg.sender == admin, "Hanya admin yang bisa akses.");
        _;
    }

    // Fungsi untuk menambah buku baru
    function tambahBuku(uint256 _ISBN, string memory _judul, uint256 _tahunDibuat, string memory _penulis) public hanyaAdmin {
        Buku memory bukuBaru = Buku(_ISBN, _judul, _tahunDibuat, _penulis);
        bukuMapping[_ISBN] = bukuBaru;
    }

    // Fungsi untuk mengupdate buku berdasarkan ISBN
    function updateBuku(uint256 _ISBN, string memory _judul, uint256 _tahunDibuat, string memory _penulis) public hanyaAdmin {
        require(bukuMapping[_ISBN].ISBN != 0, "Buku tidak ditemukan.");
        bukuMapping[_ISBN].judul = _judul;
        bukuMapping[_ISBN].tahunDibuat = _tahunDibuat;
        bukuMapping[_ISBN].penulis = _penulis;
    }

    // Fungsi untuk menghapus buku berdasarkan ISBN
    function hapusBuku(uint256 _ISBN) public hanyaAdmin {
        require(bukuMapping[_ISBN].ISBN != 0, "Buku tidak ditemukan.");
        delete bukuMapping[_ISBN];
    }

    // Fungsi untuk mendapatkan data buku berdasarkan ISBN
    function getDataBukuByISBN(uint256 _ISBN) public view returns (string memory, uint256, string memory) {
        require(bukuMapping[_ISBN].ISBN != 0, "Buku tidak ditemukan.");
        return (bukuMapping[_ISBN].judul, bukuMapping[_ISBN].tahunDibuat, bukuMapping[_ISBN].penulis);
    }
}