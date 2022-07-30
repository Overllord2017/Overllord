
var newValue;
const btns = document.querySelectorAll('.counter__btn');

  btns.forEach(btn => {
    btn.addEventListener('click', function () {
      const direction = this.dataset.direction;
      const inp = this.parentElement.querySelector('.counter__value');
      const currentValue =+ inp.value;
      

      if (direction === 'plus') {
        newValue = currentValue + 1;
      } else {
        newValue = currentValue - 1 > 0 ? currentValue - 1 : 0;
      }
      inp.value = newValue;
    })
  })
console.log(btns)

function not1(){
notif({
msg: "В корзину добавлено: " + newValue + " товара",
type: "success"
});
}
