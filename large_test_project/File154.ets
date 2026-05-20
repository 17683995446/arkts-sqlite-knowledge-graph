@Component
struct TestComponent154 {
  @State message: string = "Hello from component 154"

  aboutToAppear() {
    console.log("Component 154 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
