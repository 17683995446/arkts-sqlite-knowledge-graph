@Component
struct TestComponent1522 {
  @State message: string = "Hello from component 1522"

  aboutToAppear() {
    console.log("Component 1522 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
