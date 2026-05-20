@Component
struct TestComponent195 {
  @State message: string = "Hello from component 195"

  aboutToAppear() {
    console.log("Component 195 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
