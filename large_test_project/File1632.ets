@Component
struct TestComponent1632 {
  @State message: string = "Hello from component 1632"

  aboutToAppear() {
    console.log("Component 1632 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
