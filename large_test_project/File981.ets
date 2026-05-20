@Component
struct TestComponent981 {
  @State message: string = "Hello from component 981"

  aboutToAppear() {
    console.log("Component 981 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
