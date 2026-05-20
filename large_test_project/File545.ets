@Component
struct TestComponent545 {
  @State message: string = "Hello from component 545"

  aboutToAppear() {
    console.log("Component 545 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
