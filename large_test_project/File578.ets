@Component
struct TestComponent578 {
  @State message: string = "Hello from component 578"

  aboutToAppear() {
    console.log("Component 578 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
