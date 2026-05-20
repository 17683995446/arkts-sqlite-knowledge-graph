@Component
struct TestComponent1249 {
  @State message: string = "Hello from component 1249"

  aboutToAppear() {
    console.log("Component 1249 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
