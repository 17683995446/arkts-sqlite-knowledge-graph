@Component
struct TestComponent192 {
  @State message: string = "Hello from component 192"

  aboutToAppear() {
    console.log("Component 192 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
