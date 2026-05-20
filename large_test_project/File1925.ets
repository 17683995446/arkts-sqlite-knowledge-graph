@Component
struct TestComponent1925 {
  @State message: string = "Hello from component 1925"

  aboutToAppear() {
    console.log("Component 1925 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
