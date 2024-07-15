const start = document.getElementById("btn");
const speech = document.getElementById("speech");
const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition || window.mozSpeechRecognition || window.msSpeechRecognition)();

recognition.lang = 'en-US';
recognition.continuous = true;
recognition.interimResults = true;

recognition.onresult = (event) => {
  for (let i = event.resultIndex; i < event.results.length; i++) {
      if (event.results[i].isFinal) {
          const result = event.results[i][0].transcript;
          speech.value += result + '\n';
          send(result);
      }
  }
};

start.addEventListener("click", () => {
  recognition.start();
});

function send(result) {
  fetch("insert.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: "result=" + encodeURIComponent(result),
  });
}

