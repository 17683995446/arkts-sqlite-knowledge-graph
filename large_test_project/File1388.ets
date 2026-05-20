@Component
struct TestComponent1388 {
  @State message: string = "Hello from component 1388"

  aboutToAppear() {
    console.log("Component 1388 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
