@Component
struct TestComponent1058 {
  @State message: string = "Hello from component 1058"

  aboutToAppear() {
    console.log("Component 1058 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
