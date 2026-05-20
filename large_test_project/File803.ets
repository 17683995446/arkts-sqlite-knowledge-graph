@Component
struct TestComponent803 {
  @State message: string = "Hello from component 803"

  aboutToAppear() {
    console.log("Component 803 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
