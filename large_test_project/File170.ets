@Component
struct TestComponent170 {
  @State message: string = "Hello from component 170"

  aboutToAppear() {
    console.log("Component 170 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
