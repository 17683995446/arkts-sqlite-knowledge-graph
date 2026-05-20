@Component
struct TestComponent1005 {
  @State message: string = "Hello from component 1005"

  aboutToAppear() {
    console.log("Component 1005 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
