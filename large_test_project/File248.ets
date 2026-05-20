@Component
struct TestComponent248 {
  @State message: string = "Hello from component 248"

  aboutToAppear() {
    console.log("Component 248 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
