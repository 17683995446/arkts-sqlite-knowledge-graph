@Component
struct TestComponent1066 {
  @State message: string = "Hello from component 1066"

  aboutToAppear() {
    console.log("Component 1066 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
