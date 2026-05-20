@Component
struct TestComponent870 {
  @State message: string = "Hello from component 870"

  aboutToAppear() {
    console.log("Component 870 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
