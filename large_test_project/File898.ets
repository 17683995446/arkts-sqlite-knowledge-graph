@Component
struct TestComponent898 {
  @State message: string = "Hello from component 898"

  aboutToAppear() {
    console.log("Component 898 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
