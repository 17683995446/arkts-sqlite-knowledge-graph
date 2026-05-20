@Component
struct TestComponent1294 {
  @State message: string = "Hello from component 1294"

  aboutToAppear() {
    console.log("Component 1294 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
