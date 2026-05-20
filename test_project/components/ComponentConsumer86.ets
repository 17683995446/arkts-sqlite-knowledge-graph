
import { @ohos.router } from '@ohos.router';
import { @ohos.hilog } from '@ohos.hilog';
import { StringUtils } from 'utils/StringUtils';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { UserModel } from 'models/UserModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@Prop
@Component
export struct ComponentController517 {
  @State mList45: UserModel[] = 58;
  @State mAge46: number = 87;
  @State mList10: boolean = 'true';

  build() {
        Row() {
          TextInput('Item 0')
          Button('Item 1')
          List('Item 2')
        }
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Column() {
          List('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
        }
        Row() {
          Text('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          Text('Item 0')
        }
  }

  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
