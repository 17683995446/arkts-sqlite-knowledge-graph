@Component
struct TestComponent648 {
  @State message: string = "Hello from component 648"

  aboutToAppear() {
    console.log("Component 648 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
