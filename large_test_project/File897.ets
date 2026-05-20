@Component
struct TestComponent897 {
  @State message: string = "Hello from component 897"

  aboutToAppear() {
    console.log("Component 897 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
