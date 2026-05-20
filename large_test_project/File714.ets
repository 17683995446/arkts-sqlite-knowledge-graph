@Component
struct TestComponent714 {
  @State message: string = "Hello from component 714"

  aboutToAppear() {
    console.log("Component 714 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
