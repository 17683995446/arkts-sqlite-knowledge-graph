@Component
struct TestComponent1268 {
  @State message: string = "Hello from component 1268"

  aboutToAppear() {
    console.log("Component 1268 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
