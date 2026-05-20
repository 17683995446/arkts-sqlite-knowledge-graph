@Component
struct TestComponent932 {
  @State message: string = "Hello from component 932"

  aboutToAppear() {
    console.log("Component 932 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
