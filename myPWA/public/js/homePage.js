document.getElementById("songSearchBtn").addEventListener("click", setSongSearchSettings); // Get the three buttons.
document.getElementById("albumSearchBtn").addEventListener("click", setAlbumSearchSettings);
document.getElementById("artistSearchBtn").addEventListener("click", setArtistSearchSettings);

function setSongSearchSettings() { // For each if pressed then send cursor to searchbar and set dropdown to that option.
    document.getElementById("searchDropdown").value = "Songs";
    document.getElementById("searchbar").focus();
}

function setAlbumSearchSettings() {
    document.getElementById("searchDropdown").value = "Albums";
    document.getElementById("searchbar").focus();
}

function setArtistSearchSettings() {
    document.getElementById("searchDropdown").value = "Artists";
    document.getElementById("searchbar").focus();
}