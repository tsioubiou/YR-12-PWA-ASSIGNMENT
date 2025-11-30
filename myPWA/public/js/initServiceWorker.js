if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
        navigator.serviceWorker.register('serviceWorker.js')
        .catch((error) => {
            console.log(error)
        });
    });
}