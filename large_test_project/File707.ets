@Component
struct TestComponent707 {
  @State message: string = "Hello from component 707"

  aboutToAppear() {
    console.log("Component 707 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
