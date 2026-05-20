@Component
struct TestComponent1536 {
  @State message: string = "Hello from component 1536"

  aboutToAppear() {
    console.log("Component 1536 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
