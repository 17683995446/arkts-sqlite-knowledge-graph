@Component
struct TestComponent1469 {
  @State message: string = "Hello from component 1469"

  aboutToAppear() {
    console.log("Component 1469 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
