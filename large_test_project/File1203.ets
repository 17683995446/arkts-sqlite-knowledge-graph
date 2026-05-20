@Component
struct TestComponent1203 {
  @State message: string = "Hello from component 1203"

  aboutToAppear() {
    console.log("Component 1203 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
