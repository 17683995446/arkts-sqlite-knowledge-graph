@Component
struct TestComponent240 {
  @State message: string = "Hello from component 240"

  aboutToAppear() {
    console.log("Component 240 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
