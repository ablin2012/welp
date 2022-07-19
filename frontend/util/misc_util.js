export const shortenStr = (str, length) => {
    if (str.length > length) {
        return str.slice(0, length) + '...'
    } else {
        return str;
    }
}

export const avgRatingClass = (avgRating) => {
    if (avgRating === null) {
        return 'small-zero';
    }
    let avg = parseFloat(avgRating);
    if (avg > 0.5 && avg <= 1) {
        return 'small-one';
    } else if (avg > 1 && avg <= 1.5) {
        return 'small-one-half';
    } else if (avg > 1.5 && avg <= 2) {
        return 'small-two';
    } else if (avg > 2 && avg <= 2.5) {
        return 'small-two-half';
    } else if (avg > 2.5 && avg <= 3) {
        return 'small-three';
    } else if (avg > 3 && avg <= 3.5) {
        return 'small-three-half';
    } else if (avg > 3.5 && avg <= 4) {
        return 'small-four';
    } else if (avg > 4 && avg <= 4.5) {
        return 'small-four-half';
    } else {
        return 'small-five';
    }
}