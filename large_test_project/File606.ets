@Component
struct TestComponent606 {
  @State message: string = "Hello from component 606"

  aboutToAppear() {
    console.log("Component 606 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
