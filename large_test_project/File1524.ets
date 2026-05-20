@Component
struct TestComponent1524 {
  @State message: string = "Hello from component 1524"

  aboutToAppear() {
    console.log("Component 1524 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
