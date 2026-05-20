@Component
struct TestComponent1526 {
  @State message: string = "Hello from component 1526"

  aboutToAppear() {
    console.log("Component 1526 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
