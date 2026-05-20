@Component
struct TestComponent1578 {
  @State message: string = "Hello from component 1578"

  aboutToAppear() {
    console.log("Component 1578 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
