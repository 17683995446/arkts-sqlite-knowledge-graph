@Component
struct TestComponent992 {
  @State message: string = "Hello from component 992"

  aboutToAppear() {
    console.log("Component 992 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
