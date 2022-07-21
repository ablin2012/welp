import React from "react";

class SplashPage extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            photo: 'first'
        }
        this.transitionPhoto = this.transitionPhoto.bind(this);
    }

    componentDidMount() {
        setInterval(this.transitionPhoto, 10000);
    }

    componentWillUnmount() {
        clearInterval();
    }

    transitionPhoto() {
        if (this.state.photo === 'first') {
            this.setState({photo: 'second'});
        } else if (this.state.photo === 'second') {
            this.setState({photo: 'third'});
        } else {
            this.setState({photo: 'first'});
        }
    }

    render(){
        let {photo} = this.state;
        let mainStuff;
        if (photo === 'second') {
            mainStuff = (
                <div className="eye-catcher-main">
                        <h1>Lock it up this summer</h1>
                        <button className="wbtn"><a href="https://www.linkedin.com/in/adam-lin-2020/"><i className="fab fa-linkedin"></i> Adam's LinkedIn</a></button>
                </div>
            )
        } else if (photo === 'third') {
            mainStuff = (
                <div className="eye-catcher-main">
                        <h1>Nothing like a fresh coat of paint</h1>
                        <button className="wbtn"><a href="https://www.facebook.com/notadamlin"><i className="fab fa-facebook"></i> Adam's Facebook</a></button>
                </div>
            )
        } else {
            mainStuff = (
                <div className="eye-catcher-main">
                        <h1>Need to chill?</h1>
                        <button className="wbtn"><a href="https://github.com/ablin2012"><i className="fab fa-github"></i> Adam's GitHub</a></button>
                </div>
            )
        }
        return(
            <div className="splash-page">
                <div className={`eye-catcher ${photo}`}>
                    {mainStuff}
                </div>
                <div className="category-buttons">
                    <h1>Categories</h1>
                    <div className="category-main">
                        <div className="category-button bubble-tea">
                            <h3>Bubble Tea</h3>
                        </div>
                        <div className="category-button landmarks">
                            <h3>Landmarks</h3>
                        </div>
                        <div className="category-button bakeries">
                            <h3>Bakeries</h3>
                        </div>
                        <div className="category-button parks">
                            <h3>Parks</h3>   
                        </div>
                        <div className="category-button mexican">
                            <h3>Mexican</h3>
                        </div>
                        <div className="category-button korean">
                            <h3>Korean</h3>
                        </div>
                        <div className="category-button groceries">
                            <h3>Groceries</h3>
                        </div>
                        <div className="category-button american">
                            <h3>American</h3>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default SplashPage;