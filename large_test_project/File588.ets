@Component
struct TestComponent588 {
  @State message: string = "Hello from component 588"

  aboutToAppear() {
    console.log("Component 588 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
