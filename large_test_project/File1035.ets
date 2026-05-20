@Component
struct TestComponent1035 {
  @State message: string = "Hello from component 1035"

  aboutToAppear() {
    console.log("Component 1035 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
