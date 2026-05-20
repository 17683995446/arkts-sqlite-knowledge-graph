@Component
struct TestComponent783 {
  @State message: string = "Hello from component 783"

  aboutToAppear() {
    console.log("Component 783 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
