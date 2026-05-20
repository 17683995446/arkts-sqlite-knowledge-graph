@Component
struct TestComponent350 {
  @State message: string = "Hello from component 350"

  aboutToAppear() {
    console.log("Component 350 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
