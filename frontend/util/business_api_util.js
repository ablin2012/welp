export const fetchBusinesses = () => {
    return $.ajax({
        method: 'GET',
        url: '/api/businesses',
        error: (err) => console.log(err)
    })
}

