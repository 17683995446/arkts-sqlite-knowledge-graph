@Component
struct TestComponent1303 {
  @State message: string = "Hello from component 1303"

  aboutToAppear() {
    console.log("Component 1303 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
