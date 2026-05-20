@Component
struct TestComponent1922 {
  @State message: string = "Hello from component 1922"

  aboutToAppear() {
    console.log("Component 1922 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
