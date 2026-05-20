@Component
struct TestComponent1024 {
  @State message: string = "Hello from component 1024"

  aboutToAppear() {
    console.log("Component 1024 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
