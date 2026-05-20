@Component
struct TestComponent1263 {
  @State message: string = "Hello from component 1263"

  aboutToAppear() {
    console.log("Component 1263 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
