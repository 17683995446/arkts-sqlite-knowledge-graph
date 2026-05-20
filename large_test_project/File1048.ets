@Component
struct TestComponent1048 {
  @State message: string = "Hello from component 1048"

  aboutToAppear() {
    console.log("Component 1048 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
