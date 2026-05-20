@Component
struct TestComponent318 {
  @State message: string = "Hello from component 318"

  aboutToAppear() {
    console.log("Component 318 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
