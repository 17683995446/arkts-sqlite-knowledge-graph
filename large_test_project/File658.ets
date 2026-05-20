@Component
struct TestComponent658 {
  @State message: string = "Hello from component 658"

  aboutToAppear() {
    console.log("Component 658 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
