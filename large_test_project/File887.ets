@Component
struct TestComponent887 {
  @State message: string = "Hello from component 887"

  aboutToAppear() {
    console.log("Component 887 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
