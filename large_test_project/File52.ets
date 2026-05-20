@Component
struct TestComponent52 {
  @State message: string = "Hello from component 52"

  aboutToAppear() {
    console.log("Component 52 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
