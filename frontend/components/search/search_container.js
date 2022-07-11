import { connect } from "react-redux";
import Search from "./search";

const mapStateToProps = ({entities}) => {
    return {
        businesses: Object.values(entities.businesses)
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        fetchBusinesses: () => dispatch(fetchBusinesses())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Search);