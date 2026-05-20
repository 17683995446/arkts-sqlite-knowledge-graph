@Component
struct TestComponent566 {
  @State message: string = "Hello from component 566"

  aboutToAppear() {
    console.log("Component 566 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
