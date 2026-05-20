@Component
struct TestComponent1201 {
  @State message: string = "Hello from component 1201"

  aboutToAppear() {
    console.log("Component 1201 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
