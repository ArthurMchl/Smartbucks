
const desactiveSubmitButton = () => {
  const buttonValidate = document.getElementById('button-validate');
  buttonValidate.disabled = true
  buttonValidate.style.backgroundColor = "grey";
}

const activateSubmitButton = () => {
  const buttonValidate = document.getElementById('button-validate');
  buttonValidate.disabled = false;
  buttonValidate.style.backgroundColor = "#63D699";
}

const changeTextMessageColor = (color, message) => {
  const alertPrice = document.getElementById("price-alert")
  alertPrice.style.removeProperty('color');
  alertPrice.innerHTML = message;
  alertPrice.style.color = color;
}

const deleteTextMessageColor = () => {
  const alertPrice = document.getElementById("price-alert")
  alertPrice.style.removeProperty('color');
  alertPrice.innerHTML = "";
}

const changeInputBorderColor = (element, statut) => {
  if (statut === "ok") {
    element.style.borderColor = "#63D699"
  } else if (statut === "forbidden") {
    element.style.borderColor = "red";
  } else {
    element.style.borderColor = "#F79F1F"
  }

}

const displayPriceAdvice = (inputVoucherValue, priceReductionElement) => {

  const date = document.getElementById('voucher_end_date').value
  const addTxtPriceReduction = document.getElementById("price-advice");
  const numberVouchers = parseInt(document.getElementById('voucher_count').dataset.vc);


  const days = Math.ceil((new Date(date) - new Date()) / (60 * 60 * 24 * 1000));
  let coef_vouchers = 0
  let coef_days = 0

  if(numberVouchers <= 100) {
    coef_vouchers = 0.006 * numberVouchers + 0.35;
  } else {
    coef_vouchers = 0.95;
  }

  if (days <= 90) {
    coef_days = 0.95 - 0.006 * days;
  } else {
    coef_days = 0.35;
  }

  let coef = (coef_vouchers + coef_days) / 2;

  priceReduction = parseInt(inputVoucherValue.value) - (parseInt(inputVoucherValue.value) * coef);
  priceReduction = Math.ceil(priceReduction);
    if (!isNaN(priceReduction)) {
  addTxtPriceReduction.innerHTML = `Prix de vente conseillé : <span class="weight-font">${Math.ceil(priceReduction)} €</span>`;
    } else {
      addTxtPriceReduction.innerHTML = ``;
    }
  priceReductionElement.dataset.price = priceReduction
}

const formNewVoucher = document.getElementById('new_voucher');

if (formNewVoucher) {

  const inputPrice = document.getElementById('voucher_price')
  const buttonValidate = document.getElementById('button-validate');
  const inputVoucherValue = document.getElementById('voucher_value');
  const priceReductionElement = document.getElementById('price-reduction');

  let priceReduction = null

  inputVoucherValue.addEventListener("change", (event) => {
    displayPriceAdvice(inputVoucherValue, priceReductionElement);
  })

  inputPrice.addEventListener("input", (event) => {
    priceReduction  = parseInt(priceReductionElement.dataset.price, 10)
    const price     = parseInt(inputPrice.value, 10)
    const value     = parseInt(inputVoucherValue.value, 10)

    if(price > value) {
        desactiveSubmitButton();
        changeInputBorderColor(event.currentTarget, "forbidden");
        changeTextMessageColor("#EA2027", "Le prix indiqué est supérieur à la valeur du bon");

    } else if (price === priceReduction)  {
        activateSubmitButton();
        changeInputBorderColor(event.currentTarget, "ok");
        changeTextMessageColor("grey", "le prix indiqué correspond au prix conseillé");

    } else if(price === value) {
        activateSubmitButton();
        changeInputBorderColor(event.currentTarget, "");
        changeTextMessageColor("grey", "le prix de vente est égal à la valeur du bon ");

    } else if(priceReduction < price && price < value) {
        activateSubmitButton();
        changeInputBorderColor(event.currentTarget, "");
        changeTextMessageColor("grey", "le prix de vente est supérieur au prix conseillé");

    } else if(price < priceReduction) {
        activateSubmitButton();
        changeInputBorderColor(event.currentTarget, "ok");
        changeTextMessageColor("grey", "le prix indiqué correspond au prix conseillé");
    } else {
      deleteTextMessageColor();
    }
  });
}







