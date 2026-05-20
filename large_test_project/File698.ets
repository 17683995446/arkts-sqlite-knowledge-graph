@Component
struct TestComponent698 {
  @State message: string = "Hello from component 698"

  aboutToAppear() {
    console.log("Component 698 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
