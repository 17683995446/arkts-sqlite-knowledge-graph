
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.promptAction } from '@ohos.promptAction';

@Component
@Component
export struct ComponentProvider635 {
  @State mData49: boolean = 'true';
  @State mStatus10: UserModel[] = 92;
  @State mData35: number = 28;
  @State mName11: string = 'value54';
  @State mAge34: string = 'value89';

  build() {
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Row() {
          Text('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Row() {
          List('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
        Stack() {
          Image('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Row() {
          Button('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Image('Item 0')
          List('Item 1')
        }
  }

  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
