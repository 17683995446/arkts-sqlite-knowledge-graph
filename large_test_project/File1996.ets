@Component
struct TestComponent1996 {
  @State message: string = "Hello from component 1996"

  aboutToAppear() {
    console.log("Component 1996 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
