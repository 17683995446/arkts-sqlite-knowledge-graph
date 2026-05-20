@Component
struct TestComponent1239 {
  @State message: string = "Hello from component 1239"

  aboutToAppear() {
    console.log("Component 1239 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
