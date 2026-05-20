@Component
struct TestComponent1188 {
  @State message: string = "Hello from component 1188"

  aboutToAppear() {
    console.log("Component 1188 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
