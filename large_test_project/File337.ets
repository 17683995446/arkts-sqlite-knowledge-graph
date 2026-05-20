@Component
struct TestComponent337 {
  @State message: string = "Hello from component 337"

  aboutToAppear() {
    console.log("Component 337 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
