@Component
struct TestComponent1979 {
  @State message: string = "Hello from component 1979"

  aboutToAppear() {
    console.log("Component 1979 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
