@Component
struct TestComponent782 {
  @State message: string = "Hello from component 782"

  aboutToAppear() {
    console.log("Component 782 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
