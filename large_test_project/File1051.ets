@Component
struct TestComponent1051 {
  @State message: string = "Hello from component 1051"

  aboutToAppear() {
    console.log("Component 1051 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
