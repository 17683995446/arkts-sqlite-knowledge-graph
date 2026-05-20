@Component
struct TestComponent187 {
  @State message: string = "Hello from component 187"

  aboutToAppear() {
    console.log("Component 187 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
