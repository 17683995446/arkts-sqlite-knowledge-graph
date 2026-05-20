@Component
struct TestComponent1151 {
  @State message: string = "Hello from component 1151"

  aboutToAppear() {
    console.log("Component 1151 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
