@Component
struct TestComponent1977 {
  @State message: string = "Hello from component 1977"

  aboutToAppear() {
    console.log("Component 1977 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
