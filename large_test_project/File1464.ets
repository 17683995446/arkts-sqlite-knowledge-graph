@Component
struct TestComponent1464 {
  @State message: string = "Hello from component 1464"

  aboutToAppear() {
    console.log("Component 1464 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
