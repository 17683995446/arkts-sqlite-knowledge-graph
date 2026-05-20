@Component
struct TestComponent1387 {
  @State message: string = "Hello from component 1387"

  aboutToAppear() {
    console.log("Component 1387 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
