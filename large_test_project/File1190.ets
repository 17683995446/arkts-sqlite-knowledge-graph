@Component
struct TestComponent1190 {
  @State message: string = "Hello from component 1190"

  aboutToAppear() {
    console.log("Component 1190 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
