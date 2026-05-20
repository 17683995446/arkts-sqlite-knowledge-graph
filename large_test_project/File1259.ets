@Component
struct TestComponent1259 {
  @State message: string = "Hello from component 1259"

  aboutToAppear() {
    console.log("Component 1259 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
