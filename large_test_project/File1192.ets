@Component
struct TestComponent1192 {
  @State message: string = "Hello from component 1192"

  aboutToAppear() {
    console.log("Component 1192 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
