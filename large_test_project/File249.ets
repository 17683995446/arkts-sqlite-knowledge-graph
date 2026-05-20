@Component
struct TestComponent249 {
  @State message: string = "Hello from component 249"

  aboutToAppear() {
    console.log("Component 249 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
