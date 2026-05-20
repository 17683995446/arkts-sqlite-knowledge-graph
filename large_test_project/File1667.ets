@Component
struct TestComponent1667 {
  @State message: string = "Hello from component 1667"

  aboutToAppear() {
    console.log("Component 1667 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
