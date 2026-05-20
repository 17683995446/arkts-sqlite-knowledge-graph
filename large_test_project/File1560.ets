@Component
struct TestComponent1560 {
  @State message: string = "Hello from component 1560"

  aboutToAppear() {
    console.log("Component 1560 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
