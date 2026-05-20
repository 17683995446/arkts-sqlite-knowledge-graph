@Component
struct TestComponent351 {
  @State message: string = "Hello from component 351"

  aboutToAppear() {
    console.log("Component 351 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
