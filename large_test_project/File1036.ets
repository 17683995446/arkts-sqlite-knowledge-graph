@Component
struct TestComponent1036 {
  @State message: string = "Hello from component 1036"

  aboutToAppear() {
    console.log("Component 1036 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
