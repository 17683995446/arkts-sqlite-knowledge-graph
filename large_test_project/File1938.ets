@Component
struct TestComponent1938 {
  @State message: string = "Hello from component 1938"

  aboutToAppear() {
    console.log("Component 1938 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
