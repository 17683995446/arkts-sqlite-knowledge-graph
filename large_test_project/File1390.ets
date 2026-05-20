@Component
struct TestComponent1390 {
  @State message: string = "Hello from component 1390"

  aboutToAppear() {
    console.log("Component 1390 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
