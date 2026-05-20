@Component
struct TestComponent1605 {
  @State message: string = "Hello from component 1605"

  aboutToAppear() {
    console.log("Component 1605 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
