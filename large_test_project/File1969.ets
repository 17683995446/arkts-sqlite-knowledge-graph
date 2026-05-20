@Component
struct TestComponent1969 {
  @State message: string = "Hello from component 1969"

  aboutToAppear() {
    console.log("Component 1969 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
