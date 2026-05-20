@Component
struct TestComponent303 {
  @State message: string = "Hello from component 303"

  aboutToAppear() {
    console.log("Component 303 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
