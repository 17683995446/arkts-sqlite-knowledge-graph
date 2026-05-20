@Component
struct TestComponent794 {
  @State message: string = "Hello from component 794"

  aboutToAppear() {
    console.log("Component 794 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
