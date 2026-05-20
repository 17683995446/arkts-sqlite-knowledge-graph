@Component
struct TestComponent1032 {
  @State message: string = "Hello from component 1032"

  aboutToAppear() {
    console.log("Component 1032 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
