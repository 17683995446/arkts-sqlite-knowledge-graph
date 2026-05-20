@Component
struct TestComponent1883 {
  @State message: string = "Hello from component 1883"

  aboutToAppear() {
    console.log("Component 1883 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
