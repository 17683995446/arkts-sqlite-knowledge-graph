@Component
struct TestComponent105 {
  @State message: string = "Hello from component 105"

  aboutToAppear() {
    console.log("Component 105 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
