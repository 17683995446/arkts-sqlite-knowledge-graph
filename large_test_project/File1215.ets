@Component
struct TestComponent1215 {
  @State message: string = "Hello from component 1215"

  aboutToAppear() {
    console.log("Component 1215 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
