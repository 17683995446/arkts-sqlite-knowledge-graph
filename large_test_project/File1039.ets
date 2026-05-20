@Component
struct TestComponent1039 {
  @State message: string = "Hello from component 1039"

  aboutToAppear() {
    console.log("Component 1039 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
