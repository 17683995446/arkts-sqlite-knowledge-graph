@Component
struct TestComponent1866 {
  @State message: string = "Hello from component 1866"

  aboutToAppear() {
    console.log("Component 1866 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
