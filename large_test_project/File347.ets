@Component
struct TestComponent347 {
  @State message: string = "Hello from component 347"

  aboutToAppear() {
    console.log("Component 347 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
