@Component
struct TestComponent36 {
  @State message: string = "Hello from component 36"

  aboutToAppear() {
    console.log("Component 36 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
