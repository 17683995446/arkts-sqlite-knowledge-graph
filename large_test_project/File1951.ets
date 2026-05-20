@Component
struct TestComponent1951 {
  @State message: string = "Hello from component 1951"

  aboutToAppear() {
    console.log("Component 1951 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
