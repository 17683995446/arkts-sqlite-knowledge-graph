@Component
struct TestComponent1479 {
  @State message: string = "Hello from component 1479"

  aboutToAppear() {
    console.log("Component 1479 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
