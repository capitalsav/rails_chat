import React from 'react'
import axios from 'axios'

class Authentication extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            password: ''
        };

        this.changeEmail = this.changeEmail.bind(this);
        this.changePassword = this.changePassword.bind(this);
    }

    changeEmail(newEmail) {
        this.setState({
            email: newEmail.target.value
        })
    }

    changePassword(newPassword) {
        this.setState({
            password: newPassword.target.value
        })
    }

    handleSubmit(event) {
        event.preventDefault();
        console.log(this.state);
        axios.post('/api/v1/token', {
            user: {
                email: this.state.email,
                password: this.state.password
            }
        })
        .then(function (response) {
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        });
    }

    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <label>
                    Email:
                    <input type="text" value={this.state.email} onChange={this.changeEmail} />
                </label>
                <br/>
                <label>
                    Password:
                    <input type="password" value={this.state.password} onChange={this.changePassword} />
                </label>
                <br/>
                <input type="submit" value="Submit" />
            </form>
        );
    }
}

export default Authentication