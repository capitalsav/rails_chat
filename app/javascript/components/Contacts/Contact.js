import React from "react";
import axios from "axios";

class Contact extends React.Component {
    render() {
        return (
            <div className="user-item">
                <div className="row">
                    <div className="col-3">
                        <img src={this.props.user.avatar} className="user-avatar"/>
                    </div>
                    <div className="col-8">
                        <div className="user-display-name">{this.props.user.display_name}</div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Contact