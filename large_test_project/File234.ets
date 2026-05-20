@Component
struct TestComponent234 {
  @State message: string = "Hello from component 234"

  aboutToAppear() {
    console.log("Component 234 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
