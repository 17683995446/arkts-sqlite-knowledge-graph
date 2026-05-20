@Component
struct TestComponent203 {
  @State message: string = "Hello from component 203"

  aboutToAppear() {
    console.log("Component 203 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
