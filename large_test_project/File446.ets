@Component
struct TestComponent446 {
  @State message: string = "Hello from component 446"

  aboutToAppear() {
    console.log("Component 446 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
