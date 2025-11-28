// Initiates serviceworker.
if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
        navigator.serviceWorker.register('serviceWorker.js').then(console.log('serviceWorker has been served for work.'))
        .catch((error) => {
            console.log(error)
        });
    });
}

//Here starts the code for website.
var searchType;

document.getElementById("searchDropdown").addEventListener("change", changeSearchType);

function changeSearchType() {
    searchType = document.getElementById("searchDropdown").value;
    console.log("Search type changed to: " + searchType);
    document.getElementById("searchbar").placeholder = "Search for " + searchType;
}