@Component
struct TestComponent1216 {
  @State message: string = "Hello from component 1216"

  aboutToAppear() {
    console.log("Component 1216 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
