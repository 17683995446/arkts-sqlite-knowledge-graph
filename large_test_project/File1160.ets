@Component
struct TestComponent1160 {
  @State message: string = "Hello from component 1160"

  aboutToAppear() {
    console.log("Component 1160 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
