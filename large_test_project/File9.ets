@Component
struct TestComponent9 {
  @State message: string = "Hello from component 9"

  aboutToAppear() {
    console.log("Component 9 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
