@Component
struct TestComponent1513 {
  @State message: string = "Hello from component 1513"

  aboutToAppear() {
    console.log("Component 1513 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
