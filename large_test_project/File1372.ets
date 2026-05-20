@Component
struct TestComponent1372 {
  @State message: string = "Hello from component 1372"

  aboutToAppear() {
    console.log("Component 1372 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
