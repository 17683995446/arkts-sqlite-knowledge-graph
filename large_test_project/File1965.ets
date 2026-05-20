@Component
struct TestComponent1965 {
  @State message: string = "Hello from component 1965"

  aboutToAppear() {
    console.log("Component 1965 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
