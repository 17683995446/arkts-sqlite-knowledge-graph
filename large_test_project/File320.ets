@Component
struct TestComponent320 {
  @State message: string = "Hello from component 320"

  aboutToAppear() {
    console.log("Component 320 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
