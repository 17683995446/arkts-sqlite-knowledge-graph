@Component
struct TestComponent1400 {
  @State message: string = "Hello from component 1400"

  aboutToAppear() {
    console.log("Component 1400 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
