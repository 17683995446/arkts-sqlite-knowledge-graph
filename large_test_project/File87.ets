@Component
struct TestComponent87 {
  @State message: string = "Hello from component 87"

  aboutToAppear() {
    console.log("Component 87 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
