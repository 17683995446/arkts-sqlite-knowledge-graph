@Component
struct TestComponent1912 {
  @State message: string = "Hello from component 1912"

  aboutToAppear() {
    console.log("Component 1912 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
