@Component
struct TestComponent1083 {
  @State message: string = "Hello from component 1083"

  aboutToAppear() {
    console.log("Component 1083 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
