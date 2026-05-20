@Component
struct TestComponent1152 {
  @State message: string = "Hello from component 1152"

  aboutToAppear() {
    console.log("Component 1152 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
