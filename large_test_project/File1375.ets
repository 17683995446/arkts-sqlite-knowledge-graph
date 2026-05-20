@Component
struct TestComponent1375 {
  @State message: string = "Hello from component 1375"

  aboutToAppear() {
    console.log("Component 1375 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
