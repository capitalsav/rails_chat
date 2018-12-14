import React from 'react'
import axios from 'axios'
import ContactsList from "./Contacts/ContactsList";

class ContactsMenu extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            users: []
        }
    }

    componentDidMount() {
        let self = this;

        axios.get('/api/v1/contacts', {
        })
        .then(function (response) {
            self.setState({
                users : response.data.contacts
            });
        })
        .catch(function (error) {
            console.log(error);
        });
    }


    render() {
        return (
            <ContactsList users={this.state.users}/>
        );
    }
}

export default ContactsMenu
