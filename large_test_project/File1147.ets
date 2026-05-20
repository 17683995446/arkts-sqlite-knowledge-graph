@Component
struct TestComponent1147 {
  @State message: string = "Hello from component 1147"

  aboutToAppear() {
    console.log("Component 1147 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
