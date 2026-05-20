@Component
struct TestComponent666 {
  @State message: string = "Hello from component 666"

  aboutToAppear() {
    console.log("Component 666 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
