@Component
struct TestComponent1128 {
  @State message: string = "Hello from component 1128"

  aboutToAppear() {
    console.log("Component 1128 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
