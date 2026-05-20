
import { DateUtils } from 'utils/DateUtils';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Component
@Component
export struct ComponentHandler432 {
  @State mCount8: UserModel[] = 70;
  @State mCount8: UserModel[] = 0;
  @State mName7: string = 'value8';
  @State mAge12: string = 'value41';

  build() {
        Stack() {
          TextInput('Item 0')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Row() {
          Text('Item 0')
          List('Item 1')
          Button('Item 2')
        }
  }

  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
