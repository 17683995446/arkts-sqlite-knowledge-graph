@Component
struct TestComponent967 {
  @State message: string = "Hello from component 967"

  aboutToAppear() {
    console.log("Component 967 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
