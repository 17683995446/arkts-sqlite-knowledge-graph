@Component
struct TestComponent1072 {
  @State message: string = "Hello from component 1072"

  aboutToAppear() {
    console.log("Component 1072 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
