@Component
struct TestComponent1937 {
  @State message: string = "Hello from component 1937"

  aboutToAppear() {
    console.log("Component 1937 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
