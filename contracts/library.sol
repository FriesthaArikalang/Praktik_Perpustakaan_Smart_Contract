// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Library {
    struct Book {
        string ISBN;
        string title;
        uint year;
        string author;
    }

    mapping(string => Book) private books;
    address private admin;

    constructor() {
        // Inisialisasi alamat admin saat kontrak dibuat
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function addBook(string memory _ISBN, string memory _title, uint _year, string memory _author) public onlyAdmin {
        // Implementasi fungsi addBook
    }

    function updateBook(string memory _ISBN, string memory _title, uint _year, string memory _author) public onlyAdmin {
        // Implementasi fungsi updateBook
    }

    function deleteBook(string memory _ISBN) public onlyAdmin {
        // Implementasi fungsi deleteBook
    }

    function getBook(string memory _ISBN) public view returns (string memory, string memory, uint, string memory) {
        // Implementasi fungsi getBook
    }
}