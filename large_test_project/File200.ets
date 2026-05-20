@Component
struct TestComponent200 {
  @State message: string = "Hello from component 200"

  aboutToAppear() {
    console.log("Component 200 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
