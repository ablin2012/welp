export const RECEIVE_ALL_BUSINESSES = "RECEIVE_ALL_BUSINESSES";

export const receiveAllBusinesses = businesses => {
    return {
        type: RECEIVE_ALL_BUSINESSES,
        businesses
    }
}