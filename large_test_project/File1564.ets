@Component
struct TestComponent1564 {
  @State message: string = "Hello from component 1564"

  aboutToAppear() {
    console.log("Component 1564 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
