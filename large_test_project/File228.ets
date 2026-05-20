@Component
struct TestComponent228 {
  @State message: string = "Hello from component 228"

  aboutToAppear() {
    console.log("Component 228 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
