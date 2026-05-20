@Component
struct TestComponent1980 {
  @State message: string = "Hello from component 1980"

  aboutToAppear() {
    console.log("Component 1980 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
