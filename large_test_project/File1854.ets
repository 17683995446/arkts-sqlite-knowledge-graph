@Component
struct TestComponent1854 {
  @State message: string = "Hello from component 1854"

  aboutToAppear() {
    console.log("Component 1854 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
