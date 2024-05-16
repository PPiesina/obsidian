class Test {
  connectedCallback() {
    this.bindedLogSom = this.logSom.bind(this);
    window.addEventListener("click", this.bindedLogSom);
  }

  bindedLogSom;
  logSom() {
    //@ts-expect-error
    if (!this.template.isConnected) {
      console.log("disc");
      window.removeEventListener("click", this.bindedLogSom);
      return;
    }
    console.log("clicked");
  }
}
