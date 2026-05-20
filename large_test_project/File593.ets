@Component
struct TestComponent593 {
  @State message: string = "Hello from component 593"

  aboutToAppear() {
    console.log("Component 593 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
