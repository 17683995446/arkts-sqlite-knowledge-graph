@Component
struct TestComponent330 {
  @State message: string = "Hello from component 330"

  aboutToAppear() {
    console.log("Component 330 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
