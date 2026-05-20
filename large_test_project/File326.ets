@Component
struct TestComponent326 {
  @State message: string = "Hello from component 326"

  aboutToAppear() {
    console.log("Component 326 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
