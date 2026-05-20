@Component
struct TestComponent266 {
  @State message: string = "Hello from component 266"

  aboutToAppear() {
    console.log("Component 266 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
