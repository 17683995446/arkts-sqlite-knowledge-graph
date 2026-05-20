@Component
struct TestComponent938 {
  @State message: string = "Hello from component 938"

  aboutToAppear() {
    console.log("Component 938 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
