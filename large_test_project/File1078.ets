@Component
struct TestComponent1078 {
  @State message: string = "Hello from component 1078"

  aboutToAppear() {
    console.log("Component 1078 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
