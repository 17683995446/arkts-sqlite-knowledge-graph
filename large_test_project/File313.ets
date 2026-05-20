@Component
struct TestComponent313 {
  @State message: string = "Hello from component 313"

  aboutToAppear() {
    console.log("Component 313 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
