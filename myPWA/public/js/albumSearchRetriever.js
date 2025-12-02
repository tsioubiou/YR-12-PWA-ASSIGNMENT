var searchResults = JSON.parse(sessionStorage.getItem("searchResults")); // Get search results from session storage.

Object.keys(searchResults).forEach((key) => { // For every result in there.
    const h2 = document.createElement("h2"); // Make a <h2>.
    const div = document.createElement("div"); // Make a <div>.
    document.getElementById("searchResults").appendChild(div); // Put the new div in the search results div.
    div.appendChild(h2); // Then the h2 in the new div.

    h2.innerHTML = // Change the h2's writing to include all the info (one thing from every column) on this single result.
        (parseInt(key) + 1).toString() + ". " + 
        (searchResults[key].AlbumName).toString() + ", Length: " + 
        (searchResults[key].AlbumLength).toString() + ", Song Count: " + 
        (searchResults[key].AlbumSongCount).toString() + ", Release Date: " + 
        (searchResults[key].AlbumReleaseDate).toString();

    div.style.border = "2px solid white"; // Style the div to have border, margin, and padding.
    div.style.borderRadius = "10px";
    div.style.padding = "0px 0px 0px 20px";
    div.style.margin = "10px 10px 0px 0px";
}); // And repeat for every search result in the array.

sessionStorage.removeItem("searchResults"); // When done clear the session storage so user can search again.