@Component
struct TestComponent1153 {
  @State message: string = "Hello from component 1153"

  aboutToAppear() {
    console.log("Component 1153 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
