@Component
struct TestComponent1970 {
  @State message: string = "Hello from component 1970"

  aboutToAppear() {
    console.log("Component 1970 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
