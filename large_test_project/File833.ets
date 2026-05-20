@Component
struct TestComponent833 {
  @State message: string = "Hello from component 833"

  aboutToAppear() {
    console.log("Component 833 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
