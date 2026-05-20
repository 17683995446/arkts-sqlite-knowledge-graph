@Component
struct TestComponent1893 {
  @State message: string = "Hello from component 1893"

  aboutToAppear() {
    console.log("Component 1893 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
