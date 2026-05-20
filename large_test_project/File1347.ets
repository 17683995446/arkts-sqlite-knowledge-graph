@Component
struct TestComponent1347 {
  @State message: string = "Hello from component 1347"

  aboutToAppear() {
    console.log("Component 1347 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
