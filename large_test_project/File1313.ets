@Component
struct TestComponent1313 {
  @State message: string = "Hello from component 1313"

  aboutToAppear() {
    console.log("Component 1313 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
