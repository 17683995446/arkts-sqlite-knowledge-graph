@Component
struct TestComponent1082 {
  @State message: string = "Hello from component 1082"

  aboutToAppear() {
    console.log("Component 1082 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
