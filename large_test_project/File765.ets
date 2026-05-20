@Component
struct TestComponent765 {
  @State message: string = "Hello from component 765"

  aboutToAppear() {
    console.log("Component 765 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
