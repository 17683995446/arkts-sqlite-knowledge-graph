@Component
struct TestComponent404 {
  @State message: string = "Hello from component 404"

  aboutToAppear() {
    console.log("Component 404 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
