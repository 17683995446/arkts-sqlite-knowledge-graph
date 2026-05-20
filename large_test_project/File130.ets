@Component
struct TestComponent130 {
  @State message: string = "Hello from component 130"

  aboutToAppear() {
    console.log("Component 130 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
