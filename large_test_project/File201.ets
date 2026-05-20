@Component
struct TestComponent201 {
  @State message: string = "Hello from component 201"

  aboutToAppear() {
    console.log("Component 201 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
