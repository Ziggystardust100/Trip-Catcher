
import createChannel from './setup'

const messages = document.getElementById('messages');
const input = document.getElementById('message_content');


if (messages) {
createChannel({channel: 'MessagesChannel', id: messages.dataset.id},{
  received({message}) {
    messages.insertAdjacentHTML('beforeend', message)
    input.value = ''

  }
});}
