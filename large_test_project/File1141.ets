@Component
struct TestComponent1141 {
  @State message: string = "Hello from component 1141"

  aboutToAppear() {
    console.log("Component 1141 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
