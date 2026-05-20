@Component
struct TestComponent1159 {
  @State message: string = "Hello from component 1159"

  aboutToAppear() {
    console.log("Component 1159 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
