@Component
struct TestComponent1436 {
  @State message: string = "Hello from component 1436"

  aboutToAppear() {
    console.log("Component 1436 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
