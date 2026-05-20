@Component
struct TestComponent1134 {
  @State message: string = "Hello from component 1134"

  aboutToAppear() {
    console.log("Component 1134 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
