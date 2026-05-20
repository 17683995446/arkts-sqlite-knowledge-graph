@Component
struct TestComponent961 {
  @State message: string = "Hello from component 961"

  aboutToAppear() {
    console.log("Component 961 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
