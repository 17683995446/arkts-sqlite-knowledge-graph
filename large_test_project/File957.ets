@Component
struct TestComponent957 {
  @State message: string = "Hello from component 957"

  aboutToAppear() {
    console.log("Component 957 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
