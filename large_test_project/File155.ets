@Component
struct TestComponent155 {
  @State message: string = "Hello from component 155"

  aboutToAppear() {
    console.log("Component 155 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
