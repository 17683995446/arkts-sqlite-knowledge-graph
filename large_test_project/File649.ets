@Component
struct TestComponent649 {
  @State message: string = "Hello from component 649"

  aboutToAppear() {
    console.log("Component 649 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
