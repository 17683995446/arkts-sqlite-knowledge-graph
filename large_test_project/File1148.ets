@Component
struct TestComponent1148 {
  @State message: string = "Hello from component 1148"

  aboutToAppear() {
    console.log("Component 1148 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
