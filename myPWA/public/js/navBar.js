var searchType = "Default";

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
            requestQuery();
        }
    }
}

async function requestQuery() {
    var responseObj = await fetch("/api?query=SELECT ArtistName FROM Artists LIMIT 3;").catch((error) => {
        console.log("Error with requesting response: " + error);
    });
    var response = await responseObj.json();
}