import React from 'react'
import axios from 'axios'

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
            console.log(response);
            self.setState({
                users : response.data.contacts
            });
        })
        .catch(function (error) {
            console.log(error);
        });
    }


    render() {
        console.log(this.state.users);
        return (
            <ul>
                {this.state.users.map(function(user){
                    return <li>{user.email}</li>;
                })}
            </ul>
        );
    }
}

export default ContactsMenu
