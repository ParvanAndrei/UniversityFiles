const startButton = document.getElementById('start-btn')
const nextButton = document.getElementById('next-btn')
const testButton = document.getElementById('test-btn')
const title = document.getElementById('title')
const questionContainerElement = document.getElementById('question-container')
const questionElement = document.getElementById('question')
const answerButtonsElement = document.getElementById('answer-buttons')
const container = document.getElementById('container')
const scores = document.getElementById('score') 
const tabela = document.getElementById('score-container')
var score

//







let shuffledQuestions, currentQuestionIndex

tabela.classList.add('hide')
startButton.addEventListener('click', startGame)
nextButton.addEventListener('click', () => {
  currentQuestionIndex++
  setNextQuestion()
})

function startGame() {
  startButton.classList.add('hide')
  title.classList.add('hide')
  tabela.classList.remove('hide')
  container.style.maxWidth ="80%"
  container.style.left = "100px"
  score = 0
  shuffledQuestions = questions.sort(() => Math.random() - .5)
  currentQuestionIndex = 0
  questionContainerElement.classList.remove('hide')
  setNextQuestion()
}


function setNextQuestion() {
  resetState()
  showQuestion(shuffledQuestions[currentQuestionIndex])
}

function showQuestion(question) {
  questionElement.innerText = question.question
  question.answers.forEach(answer => {
    const button = document.createElement('button')
    scores.innerHTML = score;
    button.innerText = answer.text
    button.classList.add('btn')
    // console.log(answer)
    if (answer.correct) {
      button.dataset.correct = answer.correct
      // ceva gen un score al intrebarilor cand e corect sa creasca scoru ce este afisat non stop
      // score++;
    }
    button.addEventListener('click', selectAnswer)
    answerButtonsElement.appendChild(button)
  })
}

function resetState() {
  clearStatusClass(document.body)
  nextButton.classList.add('hide')
  while (answerButtonsElement.firstChild) {
    answerButtonsElement.removeChild(answerButtonsElement.firstChild)
  }
}

function selectAnswer(e) {
  const selectedButton = e.target
  const correct = selectedButton.dataset.correct
  console.log(correct)
  setStatusClass(document.body, correct)
  if (correct =="true"){
    score++
  }
  Array.from(answerButtonsElement.children).forEach(button => {
    setStatusClass(button, button.dataset.correct)
  })
  if (shuffledQuestions.length > currentQuestionIndex + 1) {
    nextButton.classList.remove('hide')
  } else {
    startButton.innerText = 'Restart'
    startButton.classList.remove('hide')
    // startButton.addEventListener("click", () => {
    //   title.classList.remove('hide')
    // })
    score = 0
  }
}

function setStatusClass(element, correct) {
  clearStatusClass(element)
  if (correct) {
    element.classList.add('correct')
  } else {
    element.classList.add('wrong')
  }
}

function clearStatusClass(element) {
  element.classList.remove('correct')
  element.classList.remove('wrong')
}

const questions = [
  {
    question: 'Care este cel mai rapid animal terestru?',
    answers: [
      { text: 'Leul', correct: false },
      { text: 'Tigrul', correct: false },
      { text: 'Ghepardul', correct: true },
      { text: 'Iepurele', correct: false }
    ]
  },
  {
    question: 'Care este ziua nationala a Romaniei?',
    answers: [
      { text: '24 ianuarie', correct: false },
      { text: '4 iulie', correct: false },
      { text: '1 Decembrie', correct: true },
      { text: '22 Decembrie', correct: false }
    ]
  },
  {
    question: 'Din ce este facut coltul unui elefant?',
    answers: [
      { text: 'Aur', correct: false },
      { text: 'Diamant', correct: false},
      { text: 'Fildes', correct: true},
      { text: 'Calciu', correct: false}
    ]
  },
  {
    question: 'Cine a pictat Mona Lisa?',
    answers: [
      { text: 'Leonardo da Vinci', correct: true },
      { text: 'Pablo Picasso', correct: false },
      { text: 'Nicolae Grigorescu', correct: false },
      { text: 'Michelangelo Buonarroti', correct: false }
    ]
  },
  {
    question: 'Cați ani sunt într-un mileniu?',
    answers: [
      { text: '10', correct: false },
      { text: '100', correct: false },
      { text: '1000', correct: true },
      { text: '500', correct: false }
    ]
  },
  {
    question: 'Care este primul element al tabelului periodic?',
    answers: [
      { text: 'Oxigen', correct: false },
      { text: 'Hidrogen', correct: true },
      { text: 'Heliu', correct: false },
      { text: 'Argon', correct: false }
    ]
  },
  {
    question: 'Care este denumirea științifică pentru frica de inaltimi?',
    answers: [
      { text: 'Claustrofobia', correct: false },
      { text: 'Arahnofobia', correct: false },
      { text: 'Acnofobie', correct: false },
      { text: 'Acrofobia', correct: true }
    ]
  },
  {
    question: 'Care este cel mai lung fluviu din Europa?',
    answers: [
      { text: 'Dunarea', correct: false },
      { text: 'Volga', correct: true },
      { text: 'Nipru', correct: false },
      { text: 'Nistru', correct: false }
    ]
  },
  {
    question: 'Cate continente exista e Pamant?',
    answers: [
      { text: '3', correct: false },
      { text: '4 ', correct: false },
      { text: '7', correct: true },
      { text: '12', correct: false }
    ]
  },
  {
    question: 'Cu ce tari se invecineaza Romania?',
    answers: [
      { text: 'Rusia', correct: false },
      { text: 'Ucraina', correct: true },
      { text: 'Germania', correct: false },
      { text: 'Thailanda', correct: false }
    ]
  }
]