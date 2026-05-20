@Component
struct TestComponent1038 {
  @State message: string = "Hello from component 1038"

  aboutToAppear() {
    console.log("Component 1038 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
