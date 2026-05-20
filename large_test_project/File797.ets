@Component
struct TestComponent797 {
  @State message: string = "Hello from component 797"

  aboutToAppear() {
    console.log("Component 797 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
