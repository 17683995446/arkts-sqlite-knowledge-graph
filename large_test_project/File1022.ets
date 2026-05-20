@Component
struct TestComponent1022 {
  @State message: string = "Hello from component 1022"

  aboutToAppear() {
    console.log("Component 1022 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
