@Component
struct TestComponent1043 {
  @State message: string = "Hello from component 1043"

  aboutToAppear() {
    console.log("Component 1043 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
