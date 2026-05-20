@Component
struct TestComponent1146 {
  @State message: string = "Hello from component 1146"

  aboutToAppear() {
    console.log("Component 1146 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
