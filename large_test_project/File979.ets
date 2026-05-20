@Component
struct TestComponent979 {
  @State message: string = "Hello from component 979"

  aboutToAppear() {
    console.log("Component 979 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
