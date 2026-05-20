@Component
struct TestComponent1317 {
  @State message: string = "Hello from component 1317"

  aboutToAppear() {
    console.log("Component 1317 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
