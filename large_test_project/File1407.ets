@Component
struct TestComponent1407 {
  @State message: string = "Hello from component 1407"

  aboutToAppear() {
    console.log("Component 1407 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
