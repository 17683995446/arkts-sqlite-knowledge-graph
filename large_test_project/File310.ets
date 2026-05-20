@Component
struct TestComponent310 {
  @State message: string = "Hello from component 310"

  aboutToAppear() {
    console.log("Component 310 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
