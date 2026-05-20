@Component
struct TestComponent799 {
  @State message: string = "Hello from component 799"

  aboutToAppear() {
    console.log("Component 799 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
