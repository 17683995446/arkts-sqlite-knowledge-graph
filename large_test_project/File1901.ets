@Component
struct TestComponent1901 {
  @State message: string = "Hello from component 1901"

  aboutToAppear() {
    console.log("Component 1901 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
