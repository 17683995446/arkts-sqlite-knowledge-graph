@Component
struct TestComponent1044 {
  @State message: string = "Hello from component 1044"

  aboutToAppear() {
    console.log("Component 1044 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
