
import { @ohos.promptAction } from '@ohos.promptAction';
import { @system.router } from '@system.router';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { DateUtils } from 'utils/DateUtils';
import { OrderModel } from 'models/OrderModel';
import { ConfigService } from 'services/ConfigService';
import { ArrayUtils } from 'utils/ArrayUtils';

@Preview
@Component
export struct ComponentController276 {
  @State mName42: UserModel[] = 54;
  @State mName10: boolean = 'true';

  build() {
        Column() {
          Button('Item 0')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Row() {
          TextInput('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Row() {
          List('Item 0')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
  }

  onLoad17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
