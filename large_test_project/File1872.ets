@Component
struct TestComponent1872 {
  @State message: string = "Hello from component 1872"

  aboutToAppear() {
    console.log("Component 1872 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
