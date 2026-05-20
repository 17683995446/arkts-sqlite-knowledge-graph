@Component
struct TestComponent182 {
  @State message: string = "Hello from component 182"

  aboutToAppear() {
    console.log("Component 182 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
