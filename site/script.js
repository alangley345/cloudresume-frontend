async function getCount(url) {
    const response = await fetch(url);
    var data       = await response.json()
    console.log(data.parse(visits))
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');


visitCount = "test";