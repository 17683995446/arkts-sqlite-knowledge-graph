@Component
struct TestComponent1523 {
  @State message: string = "Hello from component 1523"

  aboutToAppear() {
    console.log("Component 1523 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
