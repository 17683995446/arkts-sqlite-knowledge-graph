@Component
struct TestComponent1310 {
  @State message: string = "Hello from component 1310"

  aboutToAppear() {
    console.log("Component 1310 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
