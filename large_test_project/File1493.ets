@Component
struct TestComponent1493 {
  @State message: string = "Hello from component 1493"

  aboutToAppear() {
    console.log("Component 1493 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
