@Component
struct TestComponent1700 {
  @State message: string = "Hello from component 1700"

  aboutToAppear() {
    console.log("Component 1700 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
