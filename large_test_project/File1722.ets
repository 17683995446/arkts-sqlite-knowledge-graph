@Component
struct TestComponent1722 {
  @State message: string = "Hello from component 1722"

  aboutToAppear() {
    console.log("Component 1722 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
