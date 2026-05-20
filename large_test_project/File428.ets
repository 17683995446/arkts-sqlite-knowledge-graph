@Component
struct TestComponent428 {
  @State message: string = "Hello from component 428"

  aboutToAppear() {
    console.log("Component 428 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
