@Component
struct TestComponent1949 {
  @State message: string = "Hello from component 1949"

  aboutToAppear() {
    console.log("Component 1949 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
