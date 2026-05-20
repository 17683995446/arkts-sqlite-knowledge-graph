@Component
struct TestComponent1569 {
  @State message: string = "Hello from component 1569"

  aboutToAppear() {
    console.log("Component 1569 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
