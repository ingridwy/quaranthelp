import consumer from "./consumer";

const messagesContainer = document.getElementById('messages');
if (messagesContainer) {
  const id = messagesContainer.dataset.chatroomId;

  consumer.subscriptions.create({ channel: "RoomChannel", id: id }, {
    received(data) {
      //console.log(data);
      messageContainer.insertAdjacentHTML('beforeend', data);
    },
  });
}
