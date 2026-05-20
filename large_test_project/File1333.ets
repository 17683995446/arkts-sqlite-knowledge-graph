@Component
struct TestComponent1333 {
  @State message: string = "Hello from component 1333"

  aboutToAppear() {
    console.log("Component 1333 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
