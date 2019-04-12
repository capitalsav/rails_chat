import React from "react";

class Contact extends React.Component {
    render() {
        return (
            <div>
                <div>{this.props.user.display_name}</div>
            </div>
        )
    }
}

export default Contact