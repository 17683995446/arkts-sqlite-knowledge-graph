@Component
struct TestComponent151 {
  @State message: string = "Hello from component 151"

  aboutToAppear() {
    console.log("Component 151 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
