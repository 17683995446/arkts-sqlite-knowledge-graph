@Component
struct TestComponent780 {
  @State message: string = "Hello from component 780"

  aboutToAppear() {
    console.log("Component 780 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
