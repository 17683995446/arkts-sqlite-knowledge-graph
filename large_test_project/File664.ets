@Component
struct TestComponent664 {
  @State message: string = "Hello from component 664"

  aboutToAppear() {
    console.log("Component 664 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
