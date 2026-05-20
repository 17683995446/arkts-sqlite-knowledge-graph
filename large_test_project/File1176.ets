@Component
struct TestComponent1176 {
  @State message: string = "Hello from component 1176"

  aboutToAppear() {
    console.log("Component 1176 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
