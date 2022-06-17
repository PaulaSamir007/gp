async function get(){
    const response = await fetch ("https://www.googleapis.com/customsearch/v1?key=AIzaSyBspwV7tCnwPKem-Ic4WW9U-NETLjzk8KA&cx=2fbeeb9489a6e522c&q=$Value")
    const data = await response.json()
    console.log(data)

    data.map(function(actor){
        console.log(actor)
    })
}
get()