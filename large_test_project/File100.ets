@Component
struct TestComponent100 {
  @State message: string = "Hello from component 100"

  aboutToAppear() {
    console.log("Component 100 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
