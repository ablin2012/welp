import { connect } from "react-redux";
import ReviewsIndex from "./reviews_index";


const mapStateToProps = ({entities}) => {
    return {
        reviews: Object.values(entities.reviews),
        users: entities.users
    }
}

export default connect(mapStateToProps)(ReviewsIndex);

