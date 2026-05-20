@Component
struct TestComponent639 {
  @State message: string = "Hello from component 639"

  aboutToAppear() {
    console.log("Component 639 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
