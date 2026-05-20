@Component
struct TestComponent1463 {
  @State message: string = "Hello from component 1463"

  aboutToAppear() {
    console.log("Component 1463 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
