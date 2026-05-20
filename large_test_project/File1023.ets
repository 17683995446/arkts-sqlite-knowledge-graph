@Component
struct TestComponent1023 {
  @State message: string = "Hello from component 1023"

  aboutToAppear() {
    console.log("Component 1023 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
