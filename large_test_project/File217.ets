@Component
struct TestComponent217 {
  @State message: string = "Hello from component 217"

  aboutToAppear() {
    console.log("Component 217 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
