@Component
struct TestComponent1360 {
  @State message: string = "Hello from component 1360"

  aboutToAppear() {
    console.log("Component 1360 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
