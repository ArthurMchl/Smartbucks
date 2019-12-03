const insertPrice = () => {

  const editVoucherForm = document.querySelector('.edit_voucher');

  if (editVoucherForm) {
    const price = document.getElementById('price').dataset.price
    const inputPrice = document.getElementById('voucher_price')
    inputPrice.value = parseInt(price, 10)
  }
}

export { insertPrice }
