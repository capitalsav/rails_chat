import React from "react";
import axios from "axios";

class Contact extends React.Component {
    render() {
        return (
            <div>
                <img src={this.props.user.avatar}/>
                <div>{this.props.user.display_name}</div>
            </div>
        )
    }
}

export default Contact