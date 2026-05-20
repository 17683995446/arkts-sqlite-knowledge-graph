@Component
struct TestComponent1326 {
  @State message: string = "Hello from component 1326"

  aboutToAppear() {
    console.log("Component 1326 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
