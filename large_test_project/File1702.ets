@Component
struct TestComponent1702 {
  @State message: string = "Hello from component 1702"

  aboutToAppear() {
    console.log("Component 1702 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
