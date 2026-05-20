
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @system.router } from '@system.router';
import { CustomerText } from 'common/CustomerText';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Prop
@Component
export struct ComponentView207 {
  @State mStatus50: number = 88;
  @State mStatus7: string = 'value4';
  @State mAge11: UserModel[] = 93;
  @State mAge23: string = 'value14';
  @State mAge4: number = 88;
  @State mName14: boolean = 'true';

  build() {
        Column() {
          Image('Item 0')
          Text('Item 1')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Column() {
          Button('Item 0')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
  }

  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
