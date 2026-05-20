@Component
struct TestComponent573 {
  @State message: string = "Hello from component 573"

  aboutToAppear() {
    console.log("Component 573 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
