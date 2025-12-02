var searchType = "Default"; // Dropdown menus state.
var userSearch;
var query; // Stores the query made based in userSearch.
var responseObj; // The response object after asking for search results through API.
var response; // The response after getting the array out of the object.

document.getElementById("searchDropdown").addEventListener("change", () => changeSearchType());
// When searchbar is selected and key is pressed.
document.getElementById("searchbar").addEventListener("keydown", (keyPressed) => searchFormKeyDown(keyPressed));

function changeSearchType() {
    document.getElementById("searchbar").placeholder = "Search for " + searchType;
}

function searchFormKeyDown(keyPressed) {
    if (keyPressed.key === "Enter") { // Check if pressed key is Enter.
        keyPressed.preventDefault();
        searchType = document.getElementById("searchDropdown").value; // Get the searchType.
        if (searchType === "Default") { // If it's default then alert and don't continue.
            alert("Please use the dropdown menu to the left of the searchbar to pick a catogory for your search.")
        }
        else { // Else get searchbar value and depending on the searchType form a query for either artists, albums or songs.
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
            requestQuery(query); // Go to request query with newly formed query.
        }
    }
}

async function requestQuery(query) {
    try {
        responseObj = await fetch(`/api?query=${encodeURIComponent(query)}`).catch((error) => { // Ask for query results object.
            console.log("Error with requesting response: " + error);
        });
        response = await responseObj.json(); // Get array of results.
        console.log(response);
        if (response.length == 0) { // If the array has nothing in it then alert.
        alert("No results found for this search.");
        }
        else {
            loadPage(); // Else go on and load next page.
        }
    }
    catch(error) {
        console.log("Error in requestQuery: " + error);
    }
}

async function loadPage() {
    try {
        sessionStorage.setItem('searchResults', JSON.stringify(response)); // Save search results to session storage.
        if (searchType == "Artists") { // If artists.
            if (document.title == "Patterns Waveforms Artists") { // And in home page.
                window.location.href = "html/artistsPage.html"; // Go through html folder then artistPage.
            }
            else {
                window.location.href = "artistsPage.html"; // Else don't go through html folder (you're already in it).
            }
        }
        else if (searchType == "Albums") { // Same with albums and songs.
            if (document.title == "Patterns Waveforms Artists") {
                window.location.href = "html/albumsPage.html";
            }
            else {
                window.location.href = "albumsPage.html";
            }
        }
        else {
            if (document.title == "Patterns Waveforms Artists") {
                window.location.href = "html/songsPage.html";
            }
            else {
                window.location.href = "songsPage.html";
            }
        }
    }
    catch(error) {
        console.log("Can't save a search result in this country anymore bruh: " + error);
    }
}