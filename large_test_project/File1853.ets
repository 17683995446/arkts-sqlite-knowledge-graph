@Component
struct TestComponent1853 {
  @State message: string = "Hello from component 1853"

  aboutToAppear() {
    console.log("Component 1853 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
