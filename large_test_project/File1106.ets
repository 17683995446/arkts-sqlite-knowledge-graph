@Component
struct TestComponent1106 {
  @State message: string = "Hello from component 1106"

  aboutToAppear() {
    console.log("Component 1106 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
