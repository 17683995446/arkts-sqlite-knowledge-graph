@Component
struct TestComponent537 {
  @State message: string = "Hello from component 537"

  aboutToAppear() {
    console.log("Component 537 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
