@Component
struct TestComponent727 {
  @State message: string = "Hello from component 727"

  aboutToAppear() {
    console.log("Component 727 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
