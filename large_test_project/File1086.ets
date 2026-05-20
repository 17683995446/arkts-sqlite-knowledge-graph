@Component
struct TestComponent1086 {
  @State message: string = "Hello from component 1086"

  aboutToAppear() {
    console.log("Component 1086 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
