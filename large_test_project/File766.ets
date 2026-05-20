@Component
struct TestComponent766 {
  @State message: string = "Hello from component 766"

  aboutToAppear() {
    console.log("Component 766 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
