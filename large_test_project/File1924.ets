@Component
struct TestComponent1924 {
  @State message: string = "Hello from component 1924"

  aboutToAppear() {
    console.log("Component 1924 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
