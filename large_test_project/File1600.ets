@Component
struct TestComponent1600 {
  @State message: string = "Hello from component 1600"

  aboutToAppear() {
    console.log("Component 1600 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
