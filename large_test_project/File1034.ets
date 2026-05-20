@Component
struct TestComponent1034 {
  @State message: string = "Hello from component 1034"

  aboutToAppear() {
    console.log("Component 1034 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
