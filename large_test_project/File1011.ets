@Component
struct TestComponent1011 {
  @State message: string = "Hello from component 1011"

  aboutToAppear() {
    console.log("Component 1011 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
