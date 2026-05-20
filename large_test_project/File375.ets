@Component
struct TestComponent375 {
  @State message: string = "Hello from component 375"

  aboutToAppear() {
    console.log("Component 375 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
