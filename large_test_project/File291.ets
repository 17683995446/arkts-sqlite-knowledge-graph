@Component
struct TestComponent291 {
  @State message: string = "Hello from component 291"

  aboutToAppear() {
    console.log("Component 291 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
