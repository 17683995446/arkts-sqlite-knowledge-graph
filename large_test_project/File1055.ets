@Component
struct TestComponent1055 {
  @State message: string = "Hello from component 1055"

  aboutToAppear() {
    console.log("Component 1055 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
