@Component
struct TestComponent977 {
  @State message: string = "Hello from component 977"

  aboutToAppear() {
    console.log("Component 977 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
