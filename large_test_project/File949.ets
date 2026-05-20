@Component
struct TestComponent949 {
  @State message: string = "Hello from component 949"

  aboutToAppear() {
    console.log("Component 949 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
