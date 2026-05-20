@Component
struct TestComponent296 {
  @State message: string = "Hello from component 296"

  aboutToAppear() {
    console.log("Component 296 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
