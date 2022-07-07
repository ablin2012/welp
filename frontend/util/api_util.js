export const fetchAllBusinesses = () => {
    return $.ajax({
        method: 'GET',
        url: '/api/business'
    })
}