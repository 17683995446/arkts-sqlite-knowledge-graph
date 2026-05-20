@Component
struct TestComponent1015 {
  @State message: string = "Hello from component 1015"

  aboutToAppear() {
    console.log("Component 1015 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
