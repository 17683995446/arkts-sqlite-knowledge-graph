@Component
struct TestComponent1961 {
  @State message: string = "Hello from component 1961"

  aboutToAppear() {
    console.log("Component 1961 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
