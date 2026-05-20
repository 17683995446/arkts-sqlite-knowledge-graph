@Component
struct TestComponent796 {
  @State message: string = "Hello from component 796"

  aboutToAppear() {
    console.log("Component 796 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
