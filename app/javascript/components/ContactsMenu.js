import React from 'react'

class ContactsMenu extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            contacts: this.props.contacts
        };

        // this.updateMessages = this.updateMessages.bind(this);
    }
    render() {
        console.log(this.state.contacts)
        return <h1>{this.state.contacts}</h1>
    }
}

export default ContactsMenu
