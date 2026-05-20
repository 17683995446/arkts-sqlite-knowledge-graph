@Component
struct TestComponent1245 {
  @State message: string = "Hello from component 1245"

  aboutToAppear() {
    console.log("Component 1245 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
