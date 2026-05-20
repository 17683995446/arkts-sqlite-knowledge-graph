@Component
struct TestComponent134 {
  @State message: string = "Hello from component 134"

  aboutToAppear() {
    console.log("Component 134 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
