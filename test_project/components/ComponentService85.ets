
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct ComponentManager710 {
  @State mName23: UserModel[] = 96;
  @State mList25: string = 'value66';
  @State mData42: string = 'value52';
  @State mList47: UserModel[] = 30;
  @State mCount32: number = 67;

  build() {
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Row() {
          Text('Item 0')
          Image('Item 1')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Stack() {
          Image('Item 0')
        }
  }

  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
