@Component
struct TestComponent1731 {
  @State message: string = "Hello from component 1731"

  aboutToAppear() {
    console.log("Component 1731 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
