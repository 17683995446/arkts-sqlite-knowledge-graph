@Component
struct TestComponent379 {
  @State message: string = "Hello from component 379"

  aboutToAppear() {
    console.log("Component 379 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
