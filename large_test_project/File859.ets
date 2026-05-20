@Component
struct TestComponent859 {
  @State message: string = "Hello from component 859"

  aboutToAppear() {
    console.log("Component 859 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
