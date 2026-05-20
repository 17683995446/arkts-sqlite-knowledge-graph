@Component
struct TestComponent1944 {
  @State message: string = "Hello from component 1944"

  aboutToAppear() {
    console.log("Component 1944 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
