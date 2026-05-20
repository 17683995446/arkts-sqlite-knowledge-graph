@Component
struct TestComponent1726 {
  @State message: string = "Hello from component 1726"

  aboutToAppear() {
    console.log("Component 1726 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
