@Component
struct TestComponent787 {
  @State message: string = "Hello from component 787"

  aboutToAppear() {
    console.log("Component 787 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
