@Component
struct TestComponent206 {
  @State message: string = "Hello from component 206"

  aboutToAppear() {
    console.log("Component 206 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
