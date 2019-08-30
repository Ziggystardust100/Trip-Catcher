import createChannel from "./setup";
const msg = document.getElementById("trip-msg");
const chat = document.getElementById("tripchat_content");

if (msg) {
  createChannel(
    { channel: "TripchannelChannel", trip_id: msg.dataset.tripId },
    {
      received({ content, catcher_username }) {
        msg.insertAdjacentHTML(
          "beforeend",
          htmlChat(content, catcher_username)
        );
        if (msg.dataset.catcherId === JSON.parse(content).catcher_id) {
          chat.value = "";
        }
        msg.scrollTop = msg.scrollHeight;
      }
    }
  );
}

function htmlChat(content, catcherUsername) {
  const c = JSON.parse(content);
  const messageClass =
    parseInt(c.catcher_id) === parseInt(msg.dataset.catcherId)
      ? "message-orange"
      : "message-blue";
  return `
       <div class="${messageClass}">
          <div class='message-content'>

            <span>${c.content}</span> - <em>${catcherUsername}</em>
          </div>
        </div>

  `;
}
