@Component
struct TestComponent943 {
  @State message: string = "Hello from component 943"

  aboutToAppear() {
    console.log("Component 943 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
