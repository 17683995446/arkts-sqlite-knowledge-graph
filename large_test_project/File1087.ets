@Component
struct TestComponent1087 {
  @State message: string = "Hello from component 1087"

  aboutToAppear() {
    console.log("Component 1087 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
