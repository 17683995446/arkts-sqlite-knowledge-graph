@Component
struct TestComponent1076 {
  @State message: string = "Hello from component 1076"

  aboutToAppear() {
    console.log("Component 1076 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
