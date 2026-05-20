@Component
struct TestComponent816 {
  @State message: string = "Hello from component 816"

  aboutToAppear() {
    console.log("Component 816 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
