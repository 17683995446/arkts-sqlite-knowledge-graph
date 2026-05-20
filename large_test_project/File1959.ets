@Component
struct TestComponent1959 {
  @State message: string = "Hello from component 1959"

  aboutToAppear() {
    console.log("Component 1959 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
