import React from "react"
import PropTypes from "prop-types"
import PrivateMessagesContainer from "./PrivateMessagesContainer";
class PrivateMessages extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            messages: this.props.messages
        };

        this.updateMessages = this.updateMessages.bind(this);
    }

    updateMessages(msg) {
        this.setState(state => ({
            messages: messages.append(msg)
        }));
    }

    render () {
        return (
            <div className="col-xs-12 col-sm-8 col-md-9 col-lg-10 chat-messages-col">
                <div className="row chat-head-row">

                </div>
                <div className="row chat-message-row" id="private_messages">
                    <PrivateMessagesContainer privateMessages={this.state.messages} currentUserId={this.props.current_user_id} />
                </div>
                <div className="row chat-message-form-row">
                    <form id="private_new_message" className="new_private_message" action="#" acceptCharset="UTF-8" method="post">
                        <input name="utf8" type="hidden" value="✓"></input>
                        <input type="hidden" name="authenticity_token" value={this.props.csrf_token}></input>
                        <div className="col-xs-10 col-sm-11">
                            <input type="hidden" name="private_chat_room_id" id="private_chat_room_id" value="2"></input>
                            <textarea className="form-control private-message-text-area" name="private_message[content]" id="private_message_content"></textarea>
                        </div>
                        <div className="col-xs-2 col-sm-1">
                            <input type="submit" name="commit" value="Post" className="btn btn-warning btn-send-private-message" data-disable-with="Post"></input>
                        </div>
                    </form>
                </div>
            </div>
        );
    }
}

// PrivateMessages.propTypes = {
//     greeting: PropTypes.string
// };
export default PrivateMessages