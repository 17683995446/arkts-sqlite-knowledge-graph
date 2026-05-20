@Component
struct TestComponent1833 {
  @State message: string = "Hello from component 1833"

  aboutToAppear() {
    console.log("Component 1833 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
