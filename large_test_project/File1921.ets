@Component
struct TestComponent1921 {
  @State message: string = "Hello from component 1921"

  aboutToAppear() {
    console.log("Component 1921 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
