@Component
struct TestComponent1828 {
  @State message: string = "Hello from component 1828"

  aboutToAppear() {
    console.log("Component 1828 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
