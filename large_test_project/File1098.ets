@Component
struct TestComponent1098 {
  @State message: string = "Hello from component 1098"

  aboutToAppear() {
    console.log("Component 1098 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
