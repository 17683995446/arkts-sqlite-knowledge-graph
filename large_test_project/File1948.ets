@Component
struct TestComponent1948 {
  @State message: string = "Hello from component 1948"

  aboutToAppear() {
    console.log("Component 1948 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
