@Component
struct TestComponent1802 {
  @State message: string = "Hello from component 1802"

  aboutToAppear() {
    console.log("Component 1802 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
