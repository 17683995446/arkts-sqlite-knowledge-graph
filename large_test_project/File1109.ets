@Component
struct TestComponent1109 {
  @State message: string = "Hello from component 1109"

  aboutToAppear() {
    console.log("Component 1109 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
