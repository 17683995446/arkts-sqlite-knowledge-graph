@Component
struct TestComponent1594 {
  @State message: string = "Hello from component 1594"

  aboutToAppear() {
    console.log("Component 1594 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
