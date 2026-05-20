@Component
struct TestComponent1290 {
  @State message: string = "Hello from component 1290"

  aboutToAppear() {
    console.log("Component 1290 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
