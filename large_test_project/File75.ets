@Component
struct TestComponent75 {
  @State message: string = "Hello from component 75"

  aboutToAppear() {
    console.log("Component 75 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
