@Component
struct TestComponent1500 {
  @State message: string = "Hello from component 1500"

  aboutToAppear() {
    console.log("Component 1500 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
