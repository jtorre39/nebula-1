export default class NumericLiteral {
  constructor(value) {
    Object.assign(this, { value });
  }

  getClassName() {
    return 'NumericLiteral';
  }
}
