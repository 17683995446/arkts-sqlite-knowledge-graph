@Component
struct TestComponent1746 {
  @State message: string = "Hello from component 1746"

  aboutToAppear() {
    console.log("Component 1746 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
