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

export const ratingClass = (rating) => {
    let rate = parseFloat(rating);
    if (rate > 0.5 && rate <= 1) {
        return 'tiny-one';
    } else if (rate > 1 && rate <= 2) {
        return 'tiny-two';
    } else if (rate > 2 && rate <= 3) {
        return 'tiny-three';
    } else if (rate > 3 && rate <= 4) {
        return 'tiny-four';
    } else {
        return 'tiny-five';
    }
}