@Component
struct TestComponent1337 {
  @State message: string = "Hello from component 1337"

  aboutToAppear() {
    console.log("Component 1337 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
