export default class Argument {
  constructor(type, id, location) {
    Object.assign(this, { type, id, location });
  }

  getClassName() {
    return 'Argument';
  }

  analyze(context) {
    this.location.analyze(context);
    context.addArgument(this);
    context.addTokenArg(this);
    this.isLeaf = true;
    context.addConstruct(this);
  }
}
