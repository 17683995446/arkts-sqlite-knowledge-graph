@Component
struct TestComponent1672 {
  @State message: string = "Hello from component 1672"

  aboutToAppear() {
    console.log("Component 1672 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
