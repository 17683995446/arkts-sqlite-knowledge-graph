@Component
struct TestComponent1800 {
  @State message: string = "Hello from component 1800"

  aboutToAppear() {
    console.log("Component 1800 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
