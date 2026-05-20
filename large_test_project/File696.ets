@Component
struct TestComponent696 {
  @State message: string = "Hello from component 696"

  aboutToAppear() {
    console.log("Component 696 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
