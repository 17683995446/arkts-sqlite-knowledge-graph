
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.router } from '@ohos.router';
import { @ohos.storage } from '@ohos.storage';

@Entry
@Component
export struct ComponentHandler965 {
  @State mName8: UserModel[] = 4;
  @State mAge28: number = 95;
  @State mAge12: string = 'value1';
  @State mCount30: number = 67;
  @State mStatus17: string = 'value36';
  @State mList48: string = 'value22';

  build() {
        Column() {
          Button('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Stack() {
          Image('Item 0')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Row() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
  }

  onClick9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
