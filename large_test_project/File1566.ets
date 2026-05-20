@Component
struct TestComponent1566 {
  @State message: string = "Hello from component 1566"

  aboutToAppear() {
    console.log("Component 1566 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
