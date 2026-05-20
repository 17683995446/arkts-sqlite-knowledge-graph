@Component
struct TestComponent873 {
  @State message: string = "Hello from component 873"

  aboutToAppear() {
    console.log("Component 873 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
