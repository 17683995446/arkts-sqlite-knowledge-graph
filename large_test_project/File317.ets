@Component
struct TestComponent317 {
  @State message: string = "Hello from component 317"

  aboutToAppear() {
    console.log("Component 317 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
