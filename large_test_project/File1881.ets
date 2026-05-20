@Component
struct TestComponent1881 {
  @State message: string = "Hello from component 1881"

  aboutToAppear() {
    console.log("Component 1881 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
