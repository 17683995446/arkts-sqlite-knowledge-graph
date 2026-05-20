@Component
struct TestComponent1975 {
  @State message: string = "Hello from component 1975"

  aboutToAppear() {
    console.log("Component 1975 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
