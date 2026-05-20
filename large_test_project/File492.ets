@Component
struct TestComponent492 {
  @State message: string = "Hello from component 492"

  aboutToAppear() {
    console.log("Component 492 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
