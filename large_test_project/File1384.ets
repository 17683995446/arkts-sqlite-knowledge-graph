@Component
struct TestComponent1384 {
  @State message: string = "Hello from component 1384"

  aboutToAppear() {
    console.log("Component 1384 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
