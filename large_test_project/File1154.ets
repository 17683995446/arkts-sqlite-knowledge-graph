@Component
struct TestComponent1154 {
  @State message: string = "Hello from component 1154"

  aboutToAppear() {
    console.log("Component 1154 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
