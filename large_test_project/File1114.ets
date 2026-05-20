@Component
struct TestComponent1114 {
  @State message: string = "Hello from component 1114"

  aboutToAppear() {
    console.log("Component 1114 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
