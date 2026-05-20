@Component
struct TestComponent890 {
  @State message: string = "Hello from component 890"

  aboutToAppear() {
    console.log("Component 890 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
