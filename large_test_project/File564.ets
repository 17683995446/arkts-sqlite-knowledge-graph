@Component
struct TestComponent564 {
  @State message: string = "Hello from component 564"

  aboutToAppear() {
    console.log("Component 564 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
