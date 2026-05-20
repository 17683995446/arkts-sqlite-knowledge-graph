@Component
struct TestComponent1377 {
  @State message: string = "Hello from component 1377"

  aboutToAppear() {
    console.log("Component 1377 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
