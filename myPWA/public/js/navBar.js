var searchType = "Default";
var userSearch;
var query;
var response;
var responseObj;


document.getElementById("searchDropdown").addEventListener("change", () => changeSearchType());
document.getElementById("searchbar").addEventListener("keydown", (keyPressed) => searchFormKeyDown(keyPressed));

function changeSearchType() {
    searchType = document.getElementById("searchDropdown").value;
    document.getElementById("searchbar").placeholder = "Search for " + searchType;
}

function searchFormKeyDown(keyPressed) {
    if (keyPressed.key === "Enter") {
        keyPressed.preventDefault();
        if (searchType === "Default") {
            alert("Please use the dropdown menu to the left of the searchbar to pick a catogory for your search.")
        }
        else {
            userSearch = document.getElementById("searchbar").value
            if (searchType == "Artists") {
                query = `SELECT ArtistName FROM Artists WHERE ArtistName LIKE '%${userSearch}%';`
            }
            else if (searchType == "Albums") {
                query = `SELECT AlbumName, AlbumLength, AlbumSongCount, AlbumReleaseDate FROM Albums WHERE AlbumName LIKE '%${userSearch}%';`
            }
            else {
                query = `SELECT SongName, SongLength, AlbumName FROM Songs WHERE SongName LIKE '%${userSearch}%';`
            }
            requestQuery(query);
        }
    }
}

async function requestQuery(query) {
    try {
        responseObj = await fetch(`/api?query=${encodeURIComponent(query)}`).catch((error) => {
            console.log("Error with requesting response: " + error);
        });
        response = await responseObj.json();
        console.log(response);
        if (response.length == 0) {
        alert("No results found for this search.");
        }
        else {
            loadPage();
        }
    }
    catch(error) {
        console.log("Error in requestQuery: " + error);
    }
}

async function loadPage() {
    try {
        sessionStorage.setItem('searchResults', JSON.stringify(response));
        if (searchType == "Artists"){
            window.location.href = "html/artistsPage.html";
        }
        if (searchType == "Albums") {
            window.location.href = "html/albumsPage.html";
        }
        else {
            window.location.href = "html/songsPage.html";
        }
    }
    catch(error) {
        console.log("Can't save a search result in this country anymore bruh: " + error);
    }
}