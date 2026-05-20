@Component
struct TestComponent1373 {
  @State message: string = "Hello from component 1373"

  aboutToAppear() {
    console.log("Component 1373 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
