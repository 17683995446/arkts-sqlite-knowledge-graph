@Component
struct TestComponent1933 {
  @State message: string = "Hello from component 1933"

  aboutToAppear() {
    console.log("Component 1933 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
