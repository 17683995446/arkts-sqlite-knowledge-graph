@Component
struct TestComponent1447 {
  @State message: string = "Hello from component 1447"

  aboutToAppear() {
    console.log("Component 1447 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
