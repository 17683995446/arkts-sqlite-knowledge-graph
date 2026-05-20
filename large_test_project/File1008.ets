@Component
struct TestComponent1008 {
  @State message: string = "Hello from component 1008"

  aboutToAppear() {
    console.log("Component 1008 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
