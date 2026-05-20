@Component
struct TestComponent587 {
  @State message: string = "Hello from component 587"

  aboutToAppear() {
    console.log("Component 587 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
