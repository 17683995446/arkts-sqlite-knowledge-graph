@Component
struct TestComponent283 {
  @State message: string = "Hello from component 283"

  aboutToAppear() {
    console.log("Component 283 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
