@Component
struct TestComponent1809 {
  @State message: string = "Hello from component 1809"

  aboutToAppear() {
    console.log("Component 1809 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
