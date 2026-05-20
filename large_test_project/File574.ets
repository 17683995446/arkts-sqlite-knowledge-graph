@Component
struct TestComponent574 {
  @State message: string = "Hello from component 574"

  aboutToAppear() {
    console.log("Component 574 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
