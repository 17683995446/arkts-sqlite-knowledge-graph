@Component
struct TestComponent360 {
  @State message: string = "Hello from component 360"

  aboutToAppear() {
    console.log("Component 360 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
